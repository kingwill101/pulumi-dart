// ignore_for_file: unused_element, unnecessary_cast


class GetSnapshotsSnapshot {
  /// The time when the snapshot was created.
  final String createTime;
  /// The description of the snapshot.
  final String description;
  /// The ID of the cloud desktop to which the snapshot belongs.
  final String desktopId;
  /// The ID of the Snapshot.
  final String id;
  /// The progress of creating the snapshot.
  final String progress;
  /// The remaining time that is required to create the snapshot. Unit: seconds.
  final int remainTime;
  /// The ID of the snapshot.
  final String snapshotId;
  /// The name of the snapshot.
  final String snapshotName;
  /// The type of the snapshot.
  final String snapshotType;
  /// The capacity of the source disk. Unit: GiB.
  final String sourceDiskSize;
  /// The type of the source disk.
  final String sourceDiskType;
  /// The status of the snapshot.
  final String status;

  /// Creates a new [GetSnapshotsSnapshot].
  /// [createTime] The time when the snapshot was created.
  /// [description] The description of the snapshot.
  /// [desktopId] The ID of the cloud desktop to which the snapshot belongs.
  /// [id] The ID of the Snapshot.
  /// [progress] The progress of creating the snapshot.
  /// [remainTime] The remaining time that is required to create the snapshot. Unit: seconds.
  /// [snapshotId] The ID of the snapshot.
  /// [snapshotName] The name of the snapshot.
  /// [snapshotType] The type of the snapshot.
  /// [sourceDiskSize] The capacity of the source disk. Unit: GiB.
  /// [sourceDiskType] The type of the source disk.
  /// [status] The status of the snapshot.
  GetSnapshotsSnapshot({
    required this.createTime,
    required this.description,
    required this.desktopId,
    required this.id,
    required this.progress,
    required this.remainTime,
    required this.snapshotId,
    required this.snapshotName,
    required this.snapshotType,
    required this.sourceDiskSize,
    required this.sourceDiskType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'desktopId': desktopId,
      'id': id,
      'progress': progress,
      'remainTime': remainTime,
      'snapshotId': snapshotId,
      'snapshotName': snapshotName,
      'snapshotType': snapshotType,
      'sourceDiskSize': sourceDiskSize,
      'sourceDiskType': sourceDiskType,
      'status': status,
    };
  }

  factory GetSnapshotsSnapshot.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsSnapshot(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      desktopId: map['desktopId'] as String,
      id: map['id'] as String,
      progress: map['progress'] as String,
      remainTime: map['remainTime'] as int,
      snapshotId: map['snapshotId'] as String,
      snapshotName: map['snapshotName'] as String,
      snapshotType: map['snapshotType'] as String,
      sourceDiskSize: map['sourceDiskSize'] as String,
      sourceDiskType: map['sourceDiskType'] as String,
      status: map['status'] as String,
    );
  }
}

