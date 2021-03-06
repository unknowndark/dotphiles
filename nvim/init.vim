" TODO: http://stackoverflow.com/questions/95072/what-are-your-favorite-vim-tricks/225852#225852
" Setting up vim plug"{{{
let vimPlugNOTInstalled=1
let vimPlugURI='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
if has('win32') || has('win64')
    set runtimepath=$HOME/.config/nvim/,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after/

    let vimplugpath=expand('$HOME/.config/nvim/autoload/plug.vim')
    if !filereadable(vimplugpath)
        echo "Installing vim-plug.."
        echo ""
        silent :exe '!mkdir -p ' . $HOME .'\.config\nvim\autoload'
        silent :exe "!powershell -command \"(New-Object Net.WebClient).DownloadFile(\\\"" . vimPlugURI . "\\\", \\\"" . vimplugpath . "\\\")\""
        let vimPlugNOTInstalled=0
    endif
else
    let vimplugpath=expand('~/.config/nvim/autoload/plug.vim')
    if !filereadable(vimplugpath)
        echo "Installing vim-plug.."
        echo ""
        silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        let vimPlugNOTInstalled=0
    endif
endif"}}}
" Plugins " {{{
filetype off
call plug#begin('~/.config/nvim/plugged')
" Plug 'LustyJuggler'
" Plug 'Raimondi/delimitMate'
" Plug 'Townk/vim-autoclose'
" Plug 'garbas/vim-snipmate'
" Plug 'gmarik/snipmate.vim'
" Plug 'myint/syntastic-extras'
" Plug 'puppetlabs/puppet-syntax-vim'
" Plug 'scrooloose/syntastic'
" Plug 'snipmate'
" Plug 'svermeulen/vim-easyclip'
" Plug 'vim-scripts/hexman'
Plug 'Align'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'LaTeX-Box'
Plug 'Lokaltog/vim-easymotion'
Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'Shell.vim'
Plug 'Shougo/neocomplete'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'SirVer/ultisnips'
Plug 'StanAngeloff/php.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang --system-boost --gocode-completer --tern-completer --racer-completer' }
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-bufferline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'burnettk/vim-angular'
Plug 'chase/vim-ansible-yaml'
Plug 'chrisbra/csv.vim'
Plug 'chrisyip/Better-CSS-Syntax-for-Vim'
Plug 'claco/jasmine.vim'
Plug 'davidoc/taskpaper.vim'
Plug 'digitaltoad/vim-jade'
Plug 'docker/docker', { 'rtp': '/contrib/syntax/vim/' }
Plug 'ekalinin/Dockerfile.vim'
Plug 'elzr/vim-json'
Plug 'evanmiller/nginx-vim-syntax'
Plug 'evidens/vim-twig'
Plug 'freitass/todo.txt-vim'
Plug 'godlygeek/tabular'
Plug 'gregsexton/gitv'
Plug 'groenewege/vim-less'
Plug 'hashivim/vim-terraform'
Plug 'haya14busa/incsearch.vim'
Plug 'honza/vim-snippets'
Plug 'https://github.com/mattn/gist-vim'
Plug 'jQuery'
Plug 'jbnicolai/vim-AnsiEsc'
Plug 'jplaut/vim-arduino-ino'
Plug 'jtratner/vim-flavored-markdown'
Plug 'kien/ctrlp.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'lukaszb/vim-web-indent'
Plug 'majutsushi/tagbar'
Plug 'markcornick/vim-vagrant'
Plug 'matthewsimo/angular-vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-hugefile'
Plug 'mileszs/ack.vim'
Plug 'mivok/vimtodo'
Plug 'mtth/scratch.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'myhere/vim-nodejs-complete'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'python_fold_compact'
Plug 'rodjek/vim-puppet'
Plug 'scrooloose/snipmate-snippets'
Plug 'spf13/PIV'
Plug 'spf13/vim-preview'
Plug 'terryma/vim-expand-region'
Plug 'thinca/vim-poslist'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/DrawIt'
Plug 'vim-scripts/VOoM'
Plug 'vim-scripts/autohotkey-ahk'
Plug 'w0rp/ale'

if has('win32') || has('win64')
    Plug 'powerline/fonts', { 'do': './install.ps1' }
else
    Plug 'powerline/fonts', { 'do': './install.sh' }
endif
call plug#end()

" *TODO* Figure out how to get YouCompleteMe working

if !vimPlugNOTInstalled
    PlugUpdate
endif

" " }}}
" General "{{{
set nocompatible  " disable vi compatibility.
set autowrite  " Writes on make/shell commands
set timeoutlen=600  " Time to wait after ESC (default causes an annoying delay)
set clipboard=unnamed
set pastetoggle=<F10> "  toggle between paste and normal: for 'safer' pasting from keyboard
set tags=./tags;$HOME " walk directory tree upto $HOME looking for tags
set path+=**
" Modeline
set modeline
set modelines=5 " default numbers of lines to read for modeline instructions
" Backup
set nowritebackup
set nobackup
set directory=/tmp// " prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)
" Buffers
set hidden " The current buffer can be put to the background without writing to disk
" Match and search
set hlsearch    " highlight search
set ignorecase  " Do case in sensitive matching with
set smartcase       " be sensitive when there's a capital letter
" "}}}
" Formatting "{{{
set fo-=o " Do not automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r " Do not automatically insert a comment leader after an enter
set fo-=t " Do no auto-wrap text using textwidth (does not apply to comments)

set nowrap
set textwidth=0     " Don't wrap lines by default
set wildmode=longest,list " At command line, complete longest common string, then list alternatives.

set tabstop=4    " Set the default tabstop
set softtabstop=4
set shiftwidth=4 " Set the default shift width for indents
set expandtab   " Make tabs into spaces (set by tabstop)

set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case

filetype indent plugin indent on             " Automatically detect file types.
" HTML Formatting
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "html,body,head,tbody,div,table,tr,p"

" PHP Formatting
let g:PHP_outdentphpescape = 1
let g:PHP_removeCRwhenUnix = 1
let g:PHP_outdentSLComments = 1
let g:PHP_default_indenting = 1
let g:PHP_vintage_case_default_indent = 1

" Stop VIM hiding the quote marks in JSON files:
set conceallevel=0
let g:vim_json_syntax_conceal=0

" "}}}
" Visual "{{{
set number  " Line numbers on
set relativenumber " and relative numbering too!
set showmatch  " Show matching brackets.
set matchtime=5  " Bracket blinking.
set novisualbell  " No blinking
set noerrorbells  " No noise.
set vb t_vb= " disable any beeps or flashes on error
set shortmess=atI " Shortens messages
set cursorline

set nolist " Display unprintable characters f12 - switches

set foldenable " Turn on folding
set foldmethod=marker " Fold on the marker
set foldlevel=0 " Don't autofold anything (but I can still fold manually)
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

"set mouse-=a   " Disable mouse
set mousehide  " Hide mouse after chars typed

set splitbelow
set splitright

" "}}}
"$ Command and Auto commands " {{{
" Sudo write
comm! W exec 'w !sudo tee % > /dev/null' | e!

"Auto commands
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru}     set ft=ruby
au BufRead,BufNewFile {*.md,*.mkd,*.markdown}                         set ft=markdown
au BufRead,BufNewFile {*.md,*.mkd,*.markdown}                         set wrap
au BufRead,BufNewFile {*.md,*.mkd,*.markdown}                         set spell
au BufRead,BufNewFile {*.taskpaper}                                   set ft=taskpaper
au BufRead,BufNewFile {*.less}                                        set ft=less
au BufRead,BufNewFile {*.tex}                                         nnoremap <F2> :!make<CR>
au BufRead,BufNewFile *.pde                                           set filetype=arduino
au BufRead,BufNewFile *.ino                                           set filetype=arduino
au BufRead,BufNewFile {COMMIT_EDITMSG}                                set ft=gitcommit

au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | execute "normal g'\"" | endif " restore position in file
" " }}}
" GUI Fonts " {{{
if has("gui_running")
  if has("gui_gtk2")
    " set guifont=Inconsolata\ 12
    set guifont=Terminal:h14:cOEM
  elseif has("gui_win32")
    " set guifont=Consolas:h11:cANSI
    " set guifont=Liberation_Mono_for_Powerline:h10
    set guifont=Terminal:h14:cOEM
  endif
endif
" }}}
" Key mappings " {{{
let mapleader = "\<Space>"
let maplocalleader = ","
if has('win32') || has('win64')
    let directory=.,$TEMP " Swap file support for windows.
    let vimrcpath = $HOME . "/_vimrc"
    nnoremap <silent> <LocalLeader>vs :source $HOME/_vimrc<CR>
    nnoremap <silent> <LocalLeader>vt :tabnew $HOME/_vimrc<CR>
    nnoremap <silent> <LocalLeader>ve :e $HOME/_vimrc<CR>
    nnoremap <silent> <LocalLeader>vd :e $HOME/.vim/ <CR>
    nnoremap <silent> <LocalLeader>tn :e ~/Dropbox/TaskPaper/Todo.taskpaper<CR>
    nnoremap <silent> <LocalLeader>ts :e ~/Dropbox/TaskPaper/TodoSomeday.taskpaper<CR>
else
    nnoremap <silent> <LocalLeader>vs :source ~/git/dotphiles/nvim/init.vim<CR>
    nnoremap <silent> <LocalLeader>vt :tabnew ~/git/dotphiles/nvim/init.vim<CR>
    nnoremap <silent> <LocalLeader>ve :e ~/git/dotphiles/nvim/init.vim<CR>
    nnoremap <silent> <LocalLeader>vd :e ~/.config/nvim/ <CR>
    nnoremap <silent> <LocalLeader>tn :e ~/Dropbox/todo.txt<CR>
    nnoremap <silent> <LocalLeader>tn :e ~/todo.txt<CR>
    " nnoremap <silent> <LocalLeader>ts :e ~/Dropbox/TaskPaper/TodoSomeday.taskpaper<CR>
endif

nnoremap <silent> <LocalLeader><Space> :noh<CR>

" Buffer maps
"" Close buffer without closing split
nmap <silent> <LocalLeader>d :bp\|bd #<CR>
"" Next buffer
nmap <silent> <LocalLeader>n :bn<CR>
"" Previous buffer
nmap <silent> <LocalLeader>n :bp<CR>

" Split line(opposite to S-J joining line)
nnoremap <silent> <C-J> gEa<CR><ESC>ew

" Add a new line at the end of the line.
map <S-CR> A<CR><ESC>

imap <C-Space> <C-X><C-O>

" Control+S and Control+Q are flow-control characters: disable them in your terminal settings.
" $ stty -ixon -ixoff
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" show/Hide hidden Chars
map <silent> <F12> :set invlist<CR>

map <F1> :Gwrite<CR>
map <F2> :Gcommit<CR>
map <F3> :Git push<CR>

" generate HTML version current buffer using current color scheme
map <silent> <LocalLeader>2h :runtime! syntax/2html.vim<CR>

" Expand region mappings for terryma/vim-expand-region plugin.
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Jump around using enter and backspace instead of g
" nnoremap <CR> G
" nnoremap <BS> gg
" " }}}
" Plugin Config " {{{

let g:yankring_history_dir = $HOME.'/.vim/'
let g:yankring_history_file = '.yankring_history'

let g:LargeFile=1

" allows zooming in on an invididual split.
"noremap <LocalLeader>o :ZoomWin<CR>
"vnoremap <LocalLeader>o <C-C>:ZoomWin<CR>
"inoremap <LocalLeader>o <C-O>:ZoomWin<CR>
" noremap <C-W>+o :ZoomWin<CR>

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

if v:version > 701
  " NeoBundle 'zhaocai/GoldenView.Vim'
endif
" let g:goldenview__enable_default_mapping=0

let g:syntastic_puppet_checkers = ['puppetlint', 'puppet']
let g:syntastic_puppet_puppet_args = "--parser future"
let g:syntastic_aggregate_errors = 1

" ack.vim
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" Ultisnips
let g:UltiSnipsEditSplit="context"
let g:UltiSnipsSnippetsDir="~/.vim/ultisnips-custom-snippets/"

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

filetype plugin indent on
"}}}
" Gui and theme options"{{{
if has('gui_running')
    set background=dark
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
else
    set background=dark
endif

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://sunaku.github.io/vim-256color-bce.html
    set t_ut=
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
colorscheme solarized8_dark_high
"}}}
" Command and Auto commands " {{{
" Sudo write
comm! W exec 'w !sudo tee % > /dev/null' | e!

" Auto commands " {{{

au FileType puppet setlocal tabstop=8 expandtab shiftwidth=2 softtabstop=2
au BufRead,BufNewFile {*.php}                                         set ft=php
" au BufRead,BufNewFile {*.php}                                         UltiSnipsAddFiletypes php
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru}     set ft=ruby
au BufRead,BufNewFile {*.md,*.mkd,*.markdown}                         set ft=markdown
au BufRead,BufNewFile {*.taskpaper}                                   set ft=taskpaper
au BufRead,BufNewFile {*.less}                                        set ft=less
au BufRead,BufNewFile {*.html}                                        set ft=html
au BufRead,BufNewFile {*.jade}                                        set ft=jade
au BufRead,BufNewFile {*.tick}                                        :AnsiEsc
au BufRead,BufNewFile {COMMIT_EDITMSG}                                set ft=gitcommit

au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | execute "normal g'\"" | endif " restore position in file
" " }}}
