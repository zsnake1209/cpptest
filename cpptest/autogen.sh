#!/bin/sh
#
# $Id: autogen.sh,v 1.1 2003/05/13 13:34:12 nilu Exp $
#
# C++Test - A C++ Unit Testing Framework
# Copyright (c) 2003 Niklas Lundell
#
# ---
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the
# Free Software Foundation, Inc., 59 Temple Place - Suite 330,
# Boston, MA 02111-1307, USA.
#
# ---

echo "Creating library tools..."
libtoolize --automake --copy

echo "Creating macros..."
aclocal

echo "Creating Makefile templates..."
touch README
automake --gnu --add-missing --copy

echo "Creating 'configure'..."
autoconf

echo -e "\nRun: ./configure; make; make install\n"

