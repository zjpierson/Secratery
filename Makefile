# Makefile for Robotics 
# Author: John M. Weiss, Ph.D.
# Written Sep 19, 2013.

# Usage:  make target1 target2 ...

#-----------------------------------------------------------------------

# GNU C/C++ compiler and linker:
LINK = g++

# Turn on optimization and warnings:
CFLAGS = -Wall -O -g
CXXFLAGS = $(CFLAGS)


#-----------------------------------------------------------------------

# Specific targets:

# MAKE allows the use of "wildcards", to make writing compilation instructions
# a bit easier. GNU make uses $@ for the target and $^ for the dependencies.

secretary:	filter.o
	$(LINK) -o $@ $^ 

#-----------------------------------------------------------------------

clean:
	rm -f *.o *~ filter 

cleanall:
	rm -f *.o *~ filter secretary

