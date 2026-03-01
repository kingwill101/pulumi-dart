// ignore_for_file: unused_element, unnecessary_cast


class GetSnapshotsSnapshot {
  /// The creation time of the resource.
  final String createTime;
  /// The description of the snapshot.
  final String description;
  /// The type of the encryption.
  final int encryptType;
  /// The ID of the Snapshot.
  final String id;
  /// The progress of the snapshot creation. The value of this parameter is expressed as a percentage.
  final String progress;
  /// The remaining time that is required to create the snapshot. Unit: seconds.
  final int remainTime;
  /// The retention period of the automatic snapshot. Unit: days.
  final int retentionDays;
  /// The ID of the resource.
  final String snapshotId;
  /// The name of the snapshot.
  final String snapshotName;
  /// The ID of the source file system.
  final String sourceFileSystemId;
  /// The capacity of the source file system. Unit: GiB.
  final String sourceFileSystemSize;
  /// The version of the source file system.
  final String sourceFileSystemVersion;
  /// The status of the snapshot.
  final String status;

  /// Creates a new [GetSnapshotsSnapshot].
  /// [createTime] The creation time of the resource.
  /// [description] The description of the snapshot.
  /// [encryptType] The type of the encryption.
  /// [id] The ID of the Snapshot.
  /// [progress] The progress of the snapshot creation. The value of this parameter is expressed as a percentage.
  /// [remainTime] The remaining time that is required to create the snapshot. Unit: seconds.
  /// [retentionDays] The retention period of the automatic snapshot. Unit: days.
  /// [snapshotId] The ID of the resource.
  /// [snapshotName] The name of the snapshot.
  /// [sourceFileSystemId] The ID of the source file system.
  /// [sourceFileSystemSize] The capacity of the source file system. Unit: GiB.
  /// [sourceFileSystemVersion] The version of the source file system.
  /// [status] The status of the snapshot.
  GetSnapshotsSnapshot({
    required this.createTime,
    required this.description,
    required this.encryptType,
    required this.id,
    required this.progress,
    required this.remainTime,
    required this.retentionDays,
    required this.snapshotId,
    required this.snapshotName,
    required this.sourceFileSystemId,
    required this.sourceFileSystemSize,
    required this.sourceFileSystemVersion,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'encryptType': encryptType,
      'id': id,
      'progress': progress,
      'remainTime': remainTime,
      'retentionDays': retentionDays,
      'snapshotId': snapshotId,
      'snapshotName': snapshotName,
      'sourceFileSystemId': sourceFileSystemId,
      'sourceFileSystemSize': sourceFileSystemSize,
      'sourceFileSystemVersion': sourceFileSystemVersion,
      'status': status,
    };
  }

  factory GetSnapshotsSnapshot.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsSnapshot(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      encryptType: map['encryptType'] as int,
      id: map['id'] as String,
      progress: map['progress'] as String,
      remainTime: map['remainTime'] as int,
      retentionDays: map['retentionDays'] as int,
      snapshotId: map['snapshotId'] as String,
      snapshotName: map['snapshotName'] as String,
      sourceFileSystemId: map['sourceFileSystemId'] as String,
      sourceFileSystemSize: map['sourceFileSystemSize'] as String,
      sourceFileSystemVersion: map['sourceFileSystemVersion'] as String,
      status: map['status'] as String,
    );
  }
}

