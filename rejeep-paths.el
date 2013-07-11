;;; rejeep-paths.el --- All sorts of paths

(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path vendor-dir)

(dolist (file (directory-files vendor-dir t))
  (unless
      (or
       (string-match-p "\\(?:\\.\\|\\.\\.\\)$" file)
       (not (file-directory-p file)))
    (add-to-list 'load-path file)))
