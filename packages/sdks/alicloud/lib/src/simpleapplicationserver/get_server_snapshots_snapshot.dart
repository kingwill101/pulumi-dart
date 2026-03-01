// ignore_for_file: unused_element, unnecessary_cast


class GetServerSnapshotsSnapshot {
  /// The time when the snapshot was created. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  final String createTime;
  /// The ID of the source disk. This parameter has a value even after the source disk is released.
  final String diskId;
  /// The ID of the Snapshot.
  final String id;
  /// The progress of snapshot creation.
  final String progress;
  /// The remarks of the snapshot.
  final String remark;
  /// The ID of the snapshot.
  final String snapshotId;
  /// The name of the snapshot.
  final String snapshotName;
  /// A snapshot of the source of a disk type. Possible values: `System`, `Data`.
  final String sourceDiskType;
  /// The status of the snapshots. Valid values: `Progressing`, `Accomplished` and `Failed`.
  final String status;

  /// Creates a new [GetServerSnapshotsSnapshot].
  /// [createTime] The time when the snapshot was created. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  /// [diskId] The ID of the source disk. This parameter has a value even after the source disk is released.
  /// [id] The ID of the Snapshot.
  /// [progress] The progress of snapshot creation.
  /// [remark] The remarks of the snapshot.
  /// [snapshotId] The ID of the snapshot.
  /// [snapshotName] The name of the snapshot.
  /// [sourceDiskType] A snapshot of the source of a disk type. Possible values: `System`, `Data`.
  /// [status] The status of the snapshots. Valid values: `Progressing`, `Accomplished` and `Failed`.
  GetServerSnapshotsSnapshot({
    required this.createTime,
    required this.diskId,
    required this.id,
    required this.progress,
    required this.remark,
    required this.snapshotId,
    required this.snapshotName,
    required this.sourceDiskType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'diskId': diskId,
      'id': id,
      'progress': progress,
      'remark': remark,
      'snapshotId': snapshotId,
      'snapshotName': snapshotName,
      'sourceDiskType': sourceDiskType,
      'status': status,
    };
  }

  factory GetServerSnapshotsSnapshot.fromMap(Map<String, dynamic> map) {
    return GetServerSnapshotsSnapshot(
      createTime: map['createTime'] as String,
      diskId: map['diskId'] as String,
      id: map['id'] as String,
      progress: map['progress'] as String,
      remark: map['remark'] as String,
      snapshotId: map['snapshotId'] as String,
      snapshotName: map['snapshotName'] as String,
      sourceDiskType: map['sourceDiskType'] as String,
      status: map['status'] as String,
    );
  }
}

