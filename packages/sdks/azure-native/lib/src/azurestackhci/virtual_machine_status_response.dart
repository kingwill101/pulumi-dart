// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_status_response_provisioning_status.dart';

/// The observed state of virtual machines
class VirtualMachineStatusResponse {
  /// VirtualMachine provisioning error code
  final String? errorCode;
  /// Descriptive error message
  final String? errorMessage;
  /// The power state of the virtual machine
  final String? powerState;
  final VirtualMachineStatusResponseProvisioningStatus? provisioningStatus;

  /// Creates a new [VirtualMachineStatusResponse].
  /// [errorCode] VirtualMachine provisioning error code
  /// [errorMessage] Descriptive error message
  /// [powerState] The power state of the virtual machine
  /// [provisioningStatus] Optional.
  VirtualMachineStatusResponse({
    this.errorCode,
    this.errorMessage,
    this.powerState,
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'powerState': ?powerState,
      'provisioningStatus': ?provisioningStatus == null ? null : provisioningStatus!.toMap(),
    };
  }

  factory VirtualMachineStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStatusResponse(
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      powerState: map['powerState'] == null ? null : map['powerState'] as String,
      provisioningStatus: map['provisioningStatus'] == null ? null : VirtualMachineStatusResponseProvisioningStatus.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

