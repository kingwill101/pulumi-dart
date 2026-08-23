// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_status_response_provisioning_status.dart';

/// The observed state of virtual machines
class VirtualMachineStatusResponse {
  /// VirtualMachine provisioning error code
  final pulumi.Input<String>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String>? errorMessage;
  /// The power state of the virtual machine
  final pulumi.Input<String>? powerState;
  final pulumi.Input<VirtualMachineStatusResponseProvisioningStatus>? provisioningStatus;

  /// Creates a new [VirtualMachineStatusResponse].
  /// [errorCode] VirtualMachine provisioning error code
  /// [errorMessage] Descriptive error message
  /// [powerState] The power state of the virtual machine
  /// [provisioningStatus] Optional.
  const VirtualMachineStatusResponse({
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
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<VirtualMachineStatusResponseProvisioningStatus, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory VirtualMachineStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStatusResponse(
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      powerState: (() { final guardedValue = map['powerState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineStatusResponseProvisioningStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
