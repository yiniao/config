filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tomasr/molokai'
Plugin 'Mizuchi/STL-Syntax'

call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           YouCompleteMe:
"
"

let g:ycm_complete_in_comments = 1
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_confirm_extra_conf = 0

nnoremap <F4> :YcmDiags<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>

"
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           NERDTree:
"
"

"autocmd vimenter * NERDTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <C-n> :NERDTreeToggle<CR>

"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           Powerline:
"
"

let g:Powerline_colorscheme = 'solarized256'
let g:Powerline_symbols = 'fancy'

"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 关闭兼容模式
set nocompatible

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase

"VIM自身命令行模式智能补全
set wildmenu

" 配色方案
set t_Co=256
set background=dark
colorscheme molokai

" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 开启行号显示
set number
" 设置行号宽度
set numberwidth=5

" 设置上下保留10行
set scrolloff=10

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 高亮显示搜索结果
set hlsearch

" 开启语法高亮功能
syntax enable

" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 将制表符扩展为空格
set expandtab

" 设置编辑时制表符占用空格数
set tabstop=4

" 设置格式化时制表符占用空格数
set shiftwidth=4

" 让VIM把连续数量的空格视为一个制表符
set softtabstop=4

set cindent
set autoindent
set smartindent
set cinoptions={0,:0,g0,l1,t0,(0

" 关闭swap文件
set noswapfile

set colorcolumn=80

" za, 打开或关闭折叠当前折叠
" zM, 关闭所有折叠
" zR, 打开所有折叠
" 基于语法进行代码折叠
set foldmethod=syntax
" 启动VIM时关闭代码折叠
set nofoldenable

" 设置map leader
let mapleader = '\'

" 窗口移动
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


