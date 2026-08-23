// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Snapshot Status provisioning status
class SnapshotStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the snapshot
  final pulumi.Input<String>? operationId;
  /// The status of the operation performed on the snapshot [Succeeded, Failed, InProgress]
  final pulumi.Input<String> status;

  /// Creates a new [SnapshotStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the snapshot
  /// [status] The status of the operation performed on the snapshot [Succeeded, Failed, InProgress]
  const SnapshotStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory SnapshotStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return SnapshotStatusProvisioningStatusResponse(
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
