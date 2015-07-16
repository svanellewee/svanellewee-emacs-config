(package-initialize)
;;(add-to-list 'load-path "~/.emacs.d")
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))



;; (defun init--install-packages ()
;;   (packages-install
;;    '(magit
;;      paredit
;;      move-text
;;      gist
;;      htmlize
;;      visual-regexp
;;      markdown-mode
;;      fill-column-indicator
;;      flycheck
;;      flycheck-pos-tip
;;      flycheck-clojure
;;      dired-details
;;      css-eldoc
;;      yasnippet
;;      smartparens
;;      ido-vertical-mode
;;      ido-at-point
;;      simple-httpd
;;      guide-key
;;      nodejs-repl
;;      restclient
;;      highlight-escape-sequences
;;      whitespace-cleanup-mode
;;      elisp-slime-nav
;;      dockerfile-mode
;;      clojure-mode
;;      clojure-mode-extra-font-locking
;;      groovy-mode
;;      prodigy
;;      cider
;;      yesql-ghosts
;;      string-edit
;;      )))
;; (condition-case nil
;;     (init--install-packages)
;;   (error
;;    (package-refresh-contents)
;;    (init--install-packages)))


(load-file "~/source/java/cedet/cedet-devel-load.el")
(add-hook 'after-init-hook (lambda ()
			     (message "activate-malabar-mode")
			     (activate-malabar-mode)))


(add-hook 'malabar-java-mode-hook 'flycheck-mode)
(add-hook 'malabar-groovy-mode-hook 'flycheck-mode)


(display-time-mode 1) ;; what time?
(iswitchb-mode 1) ;; obsolete my arse
(which-func-mode 1)


(global-set-key [(meta left)] 'windmove-left)
(global-set-key [(meta right)] 'windmove-right)
(global-set-key [(meta up)] 'windmove-up)
(global-set-key [(meta down)] 'windmove-down)
(global-set-key [()] 'comment-or-uncomment-region)
;; (global-set-key (kbd "C-c c") 'comment-or-uncomment-region )
;; (global-set-key (kbd "C-c c") 'comment-or-uncomment-region )
(global-set-key (kbd "C-c c") 'comment-region )
(global-set-key (kbd "C-c u") 'uncomment-region )

(require 'color-theme)
(color-theme-initialize)
(color-theme-calm-forest)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cider-lein-command "/usr/local/bin/lein")
 '(display-time-mode t)
 '(emms-player-list nil)
 '(flymake-luac-program "/home/stephan/source/lua/5.1/bin/luac")
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(max-lisp-eval-depth 6000)
 '(max-specpdl-size 4340)
 '(scheme-program-name "/home/stephan/source/tinyscheme/tinyscheme-1.41/scheme")
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "grey70"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#b0b1a4")))))
