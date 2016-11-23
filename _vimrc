set nocompatible              " be iMproved, required

filetype off                  " required

let $ROOT='e:\depot\pplib\drivers\powerplay\'

"Set mapleader
let mapleader = ","

set wildignore+=*.d
" set the runtime path to include Vundle and initialize
set rtp+=$VIM\vimfiles\bundle\vundle

call vundle#begin('e:\study\bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'Rip-Rip/clang_complete'
Plugin 'scrooloose/nerdtree'

" bufexplorer
"Plugin 'jlanzarotta/bufexplorer'

"Plugin taglist
Plugin 'taglist.vim'

"minibufexpl
Plugin 'fholgado/minibufexpl.vim'

"EasyMotion
Plugin 'easymotion/vim-easymotion'

"autoclose
Plugin 'Townk/vim-autoclose'

"ctrlp
Plugin 'kien/ctrlp.vim'
"ctags
"Plugin 'Valloric/YouCompleteMe'

"cscope
Plugin 'vim-scripts/cscope.vim'

"easygrep
Plugin 'dkprice/vim-easygrep'

"ag
Plugin 'rking/ag.vim'

"gruvbox color scheme
"Plugin 'morhetz/gruvbox'

"Plugin 'sickill/vim-monokai'
"Plugin 'solarized/twilight'

Plugin 'vim-scripts/candy.vim'

"highlight
Plugin 'jaxbot/semantic-highlight.vim'

"AsyncRun
Plugin 'skywind3000/asyncrun.vim'

"YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'

"gen tags
"Plugin 'jsfaint/gen_tags.vim' 

"gtags
Plugin 'aceofall/gtags.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"set diffexpr=YourDiff()
"function YourDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

"Personal Settings.
"More to be added soon.
"execute pathogen#infect()
filetype plugin indent on
syntax enable
syntax on
"Set the status line options. Make it show more information.
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"Set Color Scheme and Font Options
"colorscheme gruvbox 
"colorscheme monokai 
"colorscheme twilight 
colorscheme candy 
set guifont=Consolas:h12
"set line no, buffer, search, highlight, autoindent and more.
set nu
set hidden
set ignorecase
set incsearch
set smartcase
set showmatch
set autoindent
set ruler
set vb
set viminfo+=n$VIM/_viminfo
set noerrorbells
set showcmd
set mouse=a
set history=1000
set undolevels=1000
set exrc
set secure
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set noexpandtab
set expandtab
set colorcolumn=110
set guifont=Consolas:h10
highlight ColorColumn ctermbg=darkgray
set bg=dark
set backupdir=e:\study\vimswap

"Plugins ...................................
" NERDTree
nmap <silent> <F8> <ESC>:NERDTreeToggle<CR> 
imap <silent> <F8> <ESC>:NERDTreeToggle<CR> 
let NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos = "right"

"taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=0
map <silent> <F9> :TlistToggle<cr>

"set tags='$PPLIBTAGS'
set tags=e:\depot\pplib\drivers\powerplay\*\tags

"minibufexpl
map <silent> <F7> <ESC>:MBEToggle!<CR>

" Gtags
map <silent> <F6> <ESC>:GtagsCursor<cr>
"easymotion
map <leader> <Plug>(easymotion-prefix)
map <leader>s <Plug>(easymotion-sn)
omap <leader>s <Plug>(easymotion-tn)
"map n <Plug>(easymotion-next)
"map N <Plug>(easymotion-prev)
let g:EasyMotion_smartcase=1
"map <leader>r <Plug>(easymotion-repeat)
"map <Leader>l <Plug>(easymotion-lineforward)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader>h <Plug>(easymotion-linebackward)

map <leader>r <Plug>(easymotion-repeat)
"nmap <right> <Plug>(easymotion-lineforward)
"nmap <down> <Plug>(easymotion-j)
"nmap <up> <Plug>(easymotion-k)
"nmap <left> <Plug>(easymotion-linebackward)
nmap f <plug>(easymotion-f)
nmap F <plug>(easymotion-F)
"ctrlp
"let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP :pwd'
noremap <c-a> :CtrlP $ROOT<cr>

"cscope

"Easygrep
"let g:EasyGrepCommand = 0
"let g:EasyGrepRecursive = 1
"let g:EasyGrepIgnoreCase = 1
"let g:EasyGrepFilesToExclude = "*.docx, *.xlsx, *.zip, cscope.*, *.a, *.o, *.pyc, *.gcno, *.gcda"

"Ag

let g:ag_prg="ag --column --nogroup --noheading --ignore */ai --ignore */tags --ignore */build --ignore */tools --ignore */firmware --ignore *.d --ignore *.obj"

"Semantic-highlight
"nnoremap <leader>s <ESC>:SemanticHighlight<cr>

"Plugins done .................................

"Fast reloading of the .vimrc
map <silent> <leader>ss <ESC>:w<CR> :source $vim\_vimrc<CR>
"Fast editing of .vimrc
map <silent> <leader>ee <ESC>:e $vim\_vimrc<CR>

"netrw setting
let g:netrw_winsize=30
nmap <silent> <leader>fe :Sexplore!<cr>

"q!
map <silent> <F10> <ESC>:q!<cr>

"exclude
set wildignore+=*/tmp/*,e:/pplib/drivers/powerplay/firmware/*
" defult directory
cd $ROOT

"gtags
set cscopetag
set csprg=gtags-cscope
cs add GTAGS

"let GtagsCscope_Auto_Load=1
"let CtagsCscope_Auto_Map=1
"let GtagsCscope_Quiet=1

let Gtags_VerticalWindow=0 
" Gtags_Auto_Map         
let Gtags_Auto_Update=0 
let Gtags_No_Auto_Jump=1 
