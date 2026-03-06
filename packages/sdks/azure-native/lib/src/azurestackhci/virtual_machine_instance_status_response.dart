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
  const VirtualMachineInstanceStatusResponse({
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
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      powerState: (() { final guardedValue = map['powerState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineInstanceStatusProvisioningStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

