-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- New tab

local opts = { noremap = true, silent = true }

-- Do things without affecting the registers
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "<Leader>p", '"0p')
vim.keymap.set("n", "<Leader>P", '"0P')
vim.keymap.set("v", "<Leader>p", '"0p')
vim.keymap.set("n", "<Leader>c", '"_c')
vim.keymap.set("n", "<Leader>C", '"_C')
vim.keymap.set("v", "<Leader>c", '"_c')
vim.keymap.set("v", "<Leader>C", '"_C')
vim.keymap.set("n", "<Leader>d", '"_d')
vim.keymap.set("n", "<Leader>D", '"_D')
vim.keymap.set("v", "<Leader>d", '"_d')
vim.keymap.set("v", "<Leader>D", '"_D')

-- Increment/decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
vim.keymap.set("n", "dw", 'vb"_d')

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Disable continuations
vim.keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
vim.keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
vim.keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
vim.keymap.set("n", "te", ":tabedit")
vim.keymap.set("n", "<tab>", ":tabnext<Return>", opts)
vim.keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
vim.keymap.set("n", "ss", ":split<Return>", opts)
vim.keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sl", "<C-w>l")

-- Diagnostics
vim.keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)

-- Set jk to leave insert mode
vim.keymap.set("i", "jk", "<esc><esc>", opts)
