
# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

# Call neofetch
# /opt/homebrew/bin/neofetch

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=/opt/homebrew/bin:/opt/homebrew/Cellar/git/2.43.0/bin:/opt/homebrew/opt/llvm/bin:$PATH
export PATH=/opt/homebrew/bin:/opt/homebrew/Cellar/git/2.43.0/bin:/Users/sghoshal/.pyenv/versions/3.12.0/lib/python3.12/site-packages:/opt/homebrew/opt/libpq/bin:/Users/sghoshal/.local/bin:$PATH
gopath="$(go env GOPATH)/bin"
export PATH="${PATH}:${gopath}"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export MANPAGER="sh -c 'col -bx | bat --theme=default -l man --style=plain --color=always --paging=always'" 
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PYTHON_AUTO_VRUN=true
export PYTHON_VENV_NAME=".venv"
export EXPAND_ALIASES=false
# export FZF_DEFAULT_OPTS="--preview 'bat --color=always --style=numbers --line-range=:500 {}'"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git 
  gitignore
  git-extras
  aws
	gcloud
  azure
  1password
  zsh-autosuggestions
  zsh-completions
  F-Sy-H	
	python
	poetry
	poetry-env
	pip
	docker
	docker-compose
	kubectl
	kubectx
	helm
	aliases
	nvm
	npm
	rust
	fzf
	urltools
	web-search
	z
  zoxide
  autoupdate
  tmux
  kubetail
  # vi-mode
  # zsh-vi-mode
)


ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh
zplug load


# Set options
# Increase history size
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
# Append history incrementally(as soon as they are entered)
setopt INC_APPEND_HISTORY
# Remove duplicates
setopt HIST_FIND_NO_DUPS
#

# Colorize settings
#ZSH_COLORIZE_STYLE="colorful"


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
else
   export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch arm64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

if [ -f ${HOME}/.zsh/zsh_aliases ]; then
    . ${HOME}/.zsh/zsh_aliases
fi

# Load nvim as editor
export EDITOR=nvim

zstyle :omz:plugins:iterm2 shell-integration yes

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Docker completion behavior
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes


# Custom cat
if [ -f ${HOME}/.zsh/zsh_cat ]; then
    . ${HOME}/.zsh/zsh_cat
fi


# Pyenv

if [ -f ${HOME}/.zsh/zsh_pyenv ]; then
    . ${HOME}/.zsh/zsh_pyenv
fi

# git


if [ -f ${HOME}/.zsh/zsh_git ]; then
    . ${HOME}/.zsh/zsh_git
fi


# AWS


if [ -f ${HOME}/.zsh/zsh_aws_shell ]; then
    . ${HOME}/.zsh/zsh_aws_shell
fi

# Docker


if [ -f ${HOME}/.zsh/zsh_docker ]; then
    . ${HOME}/.zsh/zsh_docker
fi

# Kubernetes

if [ -f ${HOME}/.zsh/zsh_k8s ]; then
   . ${HOME}/.zsh/zsh_k8s
fi

# p10k
if [ -f ${HOME}/.zsh/zsh_p10k ]; then
   . ${HOME}/.zsh/zsh_p10k
fi


# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by `pipx` on 2024-01-30 10:02:58
export PATH="$PATH:${HOME}/.local/bin"

# fpath+=${ZDOTDIR:-~}/.zsh_functions

# The next line updates PATH for the Google Cloud SDK.
if [ -f "${HOME}/google-cloud-sdk/path.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "${HOME}/google-cloud-sdk/completion.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/completion.zsh.inc"; fi

# Initialize zoxide
# eval "$(zoxide init zsh)"

# Support for Azure CLI
autoload bashcompinit && bashcompinit
source $(brew --prefix)/etc/bash_completion.d/az


check_port_usage() {
    lsof -n -i :"$1" | grep LISTEN
}

# Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

