set encoding=utf-8
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'fatih/vim-go', { 'tag': '*' }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'deoplete-plugins/deoplete-jedi'

Plug 'vim-airline/vim-airline'

Plug 'joshdick/onedark.vim'

call plug#end()

" Theme
syntax on
colorscheme onedark
set guifont=Noto\ Sans\ Mono\ 10

set mouse=a
set modeline
set clipboard+=unnamedplus
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
au FileType makefile set noexpandtab

set nu
set relativenumber

" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'


