// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VHD Status provisioning status
class VirtualHardDiskStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the virtual hard disk
  final pulumi.Input<String?>? operationId;
  /// The status of the operation performed on the virtual hard disk [Succeeded, Failed, InProgress]
  final pulumi.Input<String> status;

  /// Creates a new [VirtualHardDiskStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the virtual hard disk
  /// [status] The status of the operation performed on the virtual hard disk [Succeeded, Failed, InProgress]
  const VirtualHardDiskStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory VirtualHardDiskStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualHardDiskStatusProvisioningStatusResponse(
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
