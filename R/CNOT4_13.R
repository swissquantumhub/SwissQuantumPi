##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_13
# This function performs  CNOT operation on 4 qubits (Control qubit 1, Target qubit 3)
#
###########################################################################################
#' @title
#' 4 qubit CNOT gate (control-1,target-3)
#'
#' @description
#' This function applies a CNOT gate to 4 qubits. The qubits start from 0,1,2,3,4. Here
#' control is qubit 1 and target is qubit 3
#'
#' @usage
#' CNOT4_13(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the CNOT4_13 gate
#'
#' @references
#' \url{https://quantumexperience.ng.bluemix.net/}\cr
#' \url{https://gigadom.wordpress.com/2016/06/23/introducing-qcsimulator-a-5-qubit-quantum-computing-simulator-in-r/}\cr
#'
#' @author
#' Tinniam V Ganesh
#' @note
#' Maintainer: Tinniam V Ganesh \email{tvganesh.85@gmail.com}
#'
#' @examples
#' # Initialze global variables
#' init()
#' CNOT4_13(q1001_)
#' CNOT4_13(I16)
#'
#' @seealso
#' \code{\link{CNOT2_10}}\cr
#' \code{\link{PauliX}}\cr
#' \code{\link{measurement}}\cr
#' \code{\link{plotMeasurement}}\cr
#' \code{\link{CNOT5_03}}\cr
#' \code{\link{CNOT3_12}}\cr
#'
#' @export
#'
CNOT4_13 <- function(a){
    cnot4_13=TensorProd(diag(2), CNOT3_02(diag(8)))
    result = cnot4_13 %*% a
    result
}
