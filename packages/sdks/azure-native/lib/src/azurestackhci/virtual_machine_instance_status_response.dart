// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_instance_status_provisioning_status_response.dart';

/// The observed state of virtual machine instances
class VirtualMachineInstanceStatusResponse {
  /// VirtualMachine provisioning error code
  final String? errorCode;
  /// Descriptive error message
  final String? errorMessage;
  /// The power state of the virtual machine instance
  final String? powerState;
  /// Provisioning status of the virtual machine instance
  final VirtualMachineInstanceStatusProvisioningStatusResponse? provisioningStatus;

  /// Creates a new [VirtualMachineInstanceStatusResponse].
  /// [errorCode] VirtualMachine provisioning error code
  /// [errorMessage] Descriptive error message
  /// [powerState] The power state of the virtual machine instance
  /// [provisioningStatus] Provisioning status of the virtual machine instance
  VirtualMachineInstanceStatusResponse({
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

  factory VirtualMachineInstanceStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceStatusResponse(
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      powerState: map['powerState'] == null ? null : map['powerState'] as String,
      provisioningStatus: map['provisioningStatus'] == null ? null : VirtualMachineInstanceStatusProvisioningStatusResponse.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

