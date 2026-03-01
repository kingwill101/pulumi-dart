// ignore_for_file: unused_element, unnecessary_cast


class GetSnapshotsSnapshot {
  /// The type of the Snapshot.
  final String category;
  /// The creation time of the snapshot.
  final String createTime;
  /// The description of the snapshot.
  final String description;
  /// The ID of the Snapshot.
  final String id;
  /// The ID of the database file system.
  final String instanceId;
  /// The last modification time of the snapshot.
  final String lastModifiedTime;
  /// The progress of the snapshot.
  final String progress;
  /// The remaining completion time of the snapshot being created, in seconds.
  final int remainTime;
  /// The retention days of the snapshot.
  final int retentionDays;
  /// The ID of the snapshot.
  final String snapshotId;
  /// The name of the snapshot.
  final String snapshotName;
  /// The creation of the snapshot.
  final String snapshotType;
  /// Source database file system capacity.
  final int sourceFsSize;
  /// The status of the snapshot. Possible values: `progressing`, `accomplished`, `failed`.
  final String status;

  /// Creates a new [GetSnapshotsSnapshot].
  /// [category] The type of the Snapshot.
  /// [createTime] The creation time of the snapshot.
  /// [description] The description of the snapshot.
  /// [id] The ID of the Snapshot.
  /// [instanceId] The ID of the database file system.
  /// [lastModifiedTime] The last modification time of the snapshot.
  /// [progress] The progress of the snapshot.
  /// [remainTime] The remaining completion time of the snapshot being created, in seconds.
  /// [retentionDays] The retention days of the snapshot.
  /// [snapshotId] The ID of the snapshot.
  /// [snapshotName] The name of the snapshot.
  /// [snapshotType] The creation of the snapshot.
  /// [sourceFsSize] Source database file system capacity.
  /// [status] The status of the snapshot. Possible values: `progressing`, `accomplished`, `failed`.
  GetSnapshotsSnapshot({
    required this.category,
    required this.createTime,
    required this.description,
    required this.id,
    required this.instanceId,
    required this.lastModifiedTime,
    required this.progress,
    required this.remainTime,
    required this.retentionDays,
    required this.snapshotId,
    required this.snapshotName,
    required this.snapshotType,
    required this.sourceFsSize,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'createTime': createTime,
      'description': description,
      'id': id,
      'instanceId': instanceId,
      'lastModifiedTime': lastModifiedTime,
      'progress': progress,
      'remainTime': remainTime,
      'retentionDays': retentionDays,
      'snapshotId': snapshotId,
      'snapshotName': snapshotName,
      'snapshotType': snapshotType,
      'sourceFsSize': sourceFsSize,
      'status': status,
    };
  }

  factory GetSnapshotsSnapshot.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsSnapshot(
      category: map['category'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      progress: map['progress'] as String,
      remainTime: map['remainTime'] as int,
      retentionDays: map['retentionDays'] as int,
      snapshotId: map['snapshotId'] as String,
      snapshotName: map['snapshotName'] as String,
      snapshotType: map['snapshotType'] as String,
      sourceFsSize: map['sourceFsSize'] as int,
      status: map['status'] as String,
    );
  }
}

