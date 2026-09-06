// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineStatusResponseProvisioningStatus {
  /// The ID of the operation performed on the virtual machine
  final pulumi.Input<String?>? operationId;
  /// The status of the operation performed on the virtual machine [Succeeded, Failed, InProgress]
  final pulumi.Input<String?>? status;

  /// Creates a new [VirtualMachineStatusResponseProvisioningStatus].
  /// [operationId] The ID of the operation performed on the virtual machine
  /// [status] The status of the operation performed on the virtual machine [Succeeded, Failed, InProgress]
  const VirtualMachineStatusResponseProvisioningStatus({
    this.operationId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': ?status,
    };
  }

  factory VirtualMachineStatusResponseProvisioningStatus.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStatusResponseProvisioningStatus(
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
