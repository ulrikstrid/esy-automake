#! /bin/sh
# Copyright (C) 1996-2018 Free Software Foundation, Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# Test to make sure dependencies work when required macro is part of
# autoconf.

. test-init.sh

echo 'AM_FOO' >> configure.ac
echo 'AC_DEFUN([AM_FOO], [AC_REQUIRE([AC_HEADER_STDC])])' > AM_FOO.m4

$ACLOCAL -I .

: