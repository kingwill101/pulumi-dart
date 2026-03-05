// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual machine instance provisioning status.
class VirtualMachineInstanceStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the virtual machine instance
  final pulumi.Input<String>? operationId;
  /// The status of the operation performed on the virtual machine instance [Succeeded, Failed, InProgress]
  final pulumi.Input<String> status;

  /// Creates a new [VirtualMachineInstanceStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the virtual machine instance
  /// [status] The status of the operation performed on the virtual machine instance [Succeeded, Failed, InProgress]
  VirtualMachineInstanceStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory VirtualMachineInstanceStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceStatusProvisioningStatusResponse(
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

