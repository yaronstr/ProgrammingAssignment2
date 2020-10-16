## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
S <- NULL
     set <- function(y) {
          x <<- y
          S <<- NULL
     }
     get <- function() x
     setinverse <- function(inverse) S <<- inverse
     getinverse <- function() S
     list(set = set, get = get,
          setinverse = setinverse ,
          getinverse  = getinverse )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
S <- x$getinverse ()
     if(!is.null(S)) {
          message("getting cached data")
          return(S)
     }
     data <- x$get()
     S <- solve(data, ...)
     x$setinverse (S)
     S

}
