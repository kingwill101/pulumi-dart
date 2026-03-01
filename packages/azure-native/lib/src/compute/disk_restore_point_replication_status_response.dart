// ignore_for_file: unused_element, unnecessary_cast

import 'instance_view_status_response.dart';

/// The instance view of a disk restore point.
class DiskRestorePointReplicationStatusResponse {
  /// Replication completion percentage.
  final int? completionPercent;
  /// The resource status information.
  final InstanceViewStatusResponse? status;

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
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory DiskRestorePointReplicationStatusResponse.fromMap(Map<String, dynamic> map) {
    return DiskRestorePointReplicationStatusResponse(
      completionPercent: map['completionPercent'] == null ? null : map['completionPercent'] as int,
      status: map['status'] == null ? null : InstanceViewStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

