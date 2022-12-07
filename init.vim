set nocompatible            
set modifiable
set hidden
set noerrorbells
set nowrap
set showmatch               
set ignorecase              
set mouse=v                 
set hlsearch                
set incsearch               
set tabstop=2
set softtabstop=2            
set expandtab               
set shiftwidth=2           
set autoindent              
set number                  
set relativenumber
set wildmode=longest,list   
set cc=80                  
set showcmd
set smartcase
set background=dark
filetype plugin indent on   
syntax on                   
set mouse=a                 
set clipboard=unnamedplus   
filetype plugin on
set cursorline              
set ttyfast                 
set spell spelllang=en_us           
set noswapfile            
set nobackup
set undodir=~/.vim/undodir
set undofile
set scrolloff=8
set signcolumn=yes
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
filetype plugin indent on
syntax enable


""" Plugins {{{
call plug#begin('~/.vim/plugged')
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'cocopon/iceberg.vim'
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
 Plug 'honza/vim-snippets'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'lervag/vimtex'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
call plug#end()
" }}} 

colorscheme iceberg "set colorscheme after the plugin
""" Mappings {{{

inoremap jj <Esc>
nnoremap <space> : 
nnoremap Y y$

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-up> <c-w>+
nnoremap <c-down> <c-w>-
nnoremap <c-left> <c-w>>
nnoremap <c-right> <c-w><
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-s> :Files<CR>
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap <C-j> gT
nnoremap <C-k> gt

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap K <Esc>
" }}}

" Scripts {{{
  augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
  augroup END

  autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab

" }}}
