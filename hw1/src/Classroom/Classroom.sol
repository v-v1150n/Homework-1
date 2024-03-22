// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
/* Problem 1 Interface & Contract */

contract StudentV1 {
    // Note: You can declare some state variable
    uint256 public registerValue = 1001;
    uint256 public value = 123;
    bool public success = true;

    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
       if (success) {
            success = false;
            return registerValue;
        } else {
            return value; 
    }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    uint256 public registerValue = 1001;
    uint256 public value = 123;

    function register() external view returns (uint256) {
        if(IClassroomV2(msg.sender).isEnrolled() == false){
            return registerValue;
        }
        else{
            return value;
        }
}
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
    // TODO: please add your implementaiton here
        uint256 balance = gasleft();
        if(balance > 6624){
            return balance;
        }
        else 
            return 123;
       
    }
}