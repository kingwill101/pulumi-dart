// ignore_for_file: unused_element, unnecessary_cast

import 'disk_restore_point_replication_status_response.dart';

/// The instance view of a disk restore point.
class DiskRestorePointInstanceViewResponse {
  /// Disk restore point Id.
  final String? id;
  /// The disk restore point replication status information.
  final DiskRestorePointReplicationStatusResponse? replicationStatus;

  /// Creates a new [DiskRestorePointInstanceViewResponse].
  /// [id] Disk restore point Id.
  /// [replicationStatus] The disk restore point replication status information.
  DiskRestorePointInstanceViewResponse({
    this.id,
    this.replicationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'replicationStatus': ?replicationStatus == null ? null : replicationStatus!.toMap(),
    };
  }

  factory DiskRestorePointInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return DiskRestorePointInstanceViewResponse(
      id: map['id'] == null ? null : map['id'] as String,
      replicationStatus: map['replicationStatus'] == null ? null : DiskRestorePointReplicationStatusResponse.fromMap((map['replicationStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

