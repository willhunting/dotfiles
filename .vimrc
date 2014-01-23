set autoindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set nowrap
filetype on
filetype indent on
syntax on
set number
set t_Co=256
:imap jj <Esc>
set background=dark
let g:solarized_termcolors=256
colorscheme solarized 
let g:loaded_matchparen= 1
let mapleader = "," 

"CTRLP
set runtimepath^=~/.vim/bundle/ctrlp.vim

"Auto indent curly braces
:nmap <leader>b a{<cr>}<esc>O

"FILETYPES-------------------------"
autocmd FileType c,cpp set autoindent shiftwidth=2 softtabstop=2 tabstop=2 expandtab

autocmd FileType css set autoindent shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType scss set autoindent shiftwidth=2 softtabstop=2 tabstop=2 expandtab

autocmd FileType ruby set autoindent shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType javascript set autoindent shiftwidth=2 softtabstop=2 tabstop=2 expandtab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" " Indent if we're at the beginning of a line. Else, do completion.
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1 
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

"Clear search buffer hitting return
function! MapCR()
    nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()
