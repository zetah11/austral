(*
   Part of the Austral project, under the Apache License v2.0 with LLVM Exceptions.
   See LICENSE file for details.

   SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
*)
(** This module provides a representation-independent way of writing the text in
    error messages. Rather than concatenating strings, we use a more structured
    representation, which can then be rendered to both plain text and HTML. *)

(** The contents of an error message. *)
type err_text = text_elem list

(** An individual error text element. *)
and text_elem =
  | Text of string
  (** Human-readable prose. *)
  | Code of string
  (** Austral text, like the name of an identifier or a type. *)
  | Break
  (** A paragraph break. *)

(** Render error text to plain text for disply in the terminal. *)
val error_text_to_plain : err_text -> string

val error_text_to_html  : err_text -> string
