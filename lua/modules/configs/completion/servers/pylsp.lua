-- https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/pylsp.lua
return {
	cmd = { "pylsp" },
	filetypes = { "python" },
	settings = {
		pylsp = {
			plugins = {
				-- Lint
				ruff = {
					enabled = true,
					select = {
						-- enable pycodestyle
						"E",
						-- enable pyflakes
						"F",
					},
					ignore = {
						-- ignore E501 (line too long)
						-- "E501",
						-- ignore F401 (imported but unused)
						-- "F401",
					},
					extendSelect = { "I" },
					severities = {
						-- Hint, Information, Warning, Error
						F401 = "I",
						E501 = "I",
					},
				},
				pylint = { enabled = true },
				flake8 = { enabled = true },
				pyflakes = { enabled = false },
				pycodestyle = { enabled = true },
				mccabe = { enabled = false },

				-- Code refactor
				rope = { enabled = true },

				-- Formatting
				black = { enabled = true },
				pyls_isort = { enabled = false },
				autopep8 = { enabled = true },
				yapf = { enabled = false },
			},
		},
	},
}
