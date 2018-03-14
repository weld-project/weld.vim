" Vim syntax file
" Language: Weld
" Maintainer: The Weld Project
" URL: https://www.weld.rs

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

scriptencoding utf-8

let b:current_syntax = "weld"

syn keyword weldTodo contained TODO FIXME XXX NOTE
syn match weldComment "#.*$"

syn match weldComment "#.*$" contains=weldTodo

" Regular int like number with - + or nothing in front
syn match weldNumber '\d\+' contained display

syn match weldNumber /\<0[dDfFlL]\?\>/ " Just a bare 0
syn match weldNumber /\<[1-9]\d*[dDfFlL]\?\>/  " A multi-digit number

syn region weldString start='"' end='"' contained

syn keyword weldKeyword if for let merge result

syn keyword weldBool true false
syn keyword weldPrimitiveType i8 i16 i32 i64 u8 u16 u32 u64 f32 f64 bool
syn keyword weldCollectionType vec dict simd
syn keyword weldBuilderType appender merger vecmerger dictmerger groupmerger

syn match   weldOperator    "\w\(\w\)*("he=e-1,me=e-1
syn match   weldOperator    "\w\(\w\)*\["he=e-1,me=e-1


hi def link weldTodo        Todo
hi def link weldComment     Comment
hi def link weldKeyword     Statement
hi def link weldString      Constant
hi def link weldNumber      Constant
hi def link weldBool        Constant
hi def link weldPrimitiveType Type
hi def link weldBuilderType Preproc
hi def link weldCollectionType Type
hi def link weldOperator Identifier

let b:current_syntax = "weld"
