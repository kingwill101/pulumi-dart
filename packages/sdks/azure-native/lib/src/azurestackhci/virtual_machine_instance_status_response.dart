// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_instance_status_provisioning_status_response.dart';

/// The observed state of virtual machine instances
class VirtualMachineInstanceStatusResponse {
  /// VirtualMachine provisioning error code
  final pulumi.Input<String>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String>? errorMessage;
  /// The power state of the virtual machine instance
  final pulumi.Input<String>? powerState;
  /// Provisioning status of the virtual machine instance
  final pulumi.Input<VirtualMachineInstanceStatusProvisioningStatusResponse>? provisioningStatus;

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
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstanceStatusProvisioningStatusResponse, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstanceStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceStatusResponse(
      errorCode: map['errorCode'] == null ? null : (map['errorCode'] as String).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
      powerState: map['powerState'] == null ? null : (map['powerState'] as String).input(),
      provisioningStatus: map['provisioningStatus'] == null ? null : (VirtualMachineInstanceStatusProvisioningStatusResponse.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

