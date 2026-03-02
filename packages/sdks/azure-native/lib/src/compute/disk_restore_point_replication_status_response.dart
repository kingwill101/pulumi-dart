// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status_response.dart';

/// The instance view of a disk restore point.
class DiskRestorePointReplicationStatusResponse {
  /// Replication completion percentage.
  final pulumi.Input<int>? completionPercent;
  /// The resource status information.
  final pulumi.Input<InstanceViewStatusResponse>? status;

  /// Creates a new [DiskRestorePointReplicationStatusResponse].
  /// [completionPercent] Replication completion percentage.
  /// [status] The resource status information.
  DiskRestorePointReplicationStatusResponse({
    this.completionPercent,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionPercent': ?completionPercent,
      'status': ?pulumi.Input.mapOptionalInputValue<InstanceViewStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory DiskRestorePointReplicationStatusResponse.fromMap(Map<String, dynamic> map) {
    return DiskRestorePointReplicationStatusResponse(
      completionPercent: map['completionPercent'] == null ? null : (map['completionPercent']! as int).input(),
      status: map['status'] == null ? null : (InstanceViewStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

