"Disable compatibility with vi which can cause unexpected issues.
set nocompatible


" Enable persistent undo
" set undofile
" set undodir=~/.vim/undodir


" Current buffer can be sent to the background without writing to disk
set hidden

" Always display the status bar
set laststatus=2

" Netrw settings
" Set list style to wide
let g:netrw_liststyle=3
" Open files in anohter split (not the same window)
let g:netrw_browse_split=2

" Change cursor to blinking underscore (Insert mode) or block (other modes)
if &term =~ '^xterm'
  " insert mode (Start Insert)
  let &t_SI .= "\<Esc>[3 q"
  " other modes (End Insert)
  let &t_EI .= "\<Esc>[1 q"
  " 1 or 0 -> blinking block
  " 2 -> solid block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar

  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\e[5 q"
endif

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on
    
" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Hightligh column 80 and 100
set colorcolumn=80,100
hi ColorColumn ctermbg=238 guibg=Grey40

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
