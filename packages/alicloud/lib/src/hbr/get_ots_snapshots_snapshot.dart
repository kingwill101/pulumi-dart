// ignore_for_file: unused_element, unnecessary_cast


class GetOtsSnapshotsSnapshot {
  /// The actual amount of backup snapshots after duplicates are removed. Unit: bytes.
  final String actualBytes;
  /// The backup type. Valid value: `COMPLETE`, which indicates full backup.
  final String backupType;
  /// The total amount of data. Unit: bytes.
  final String bytesTotal;
  /// The time when the backup snapshot was completed. This value is a UNIX timestamp. Unit: seconds.
  final String completeTime;
  /// The time when the Table store instance was created. This value is a UNIX timestamp. Unit: seconds.
  final String createTime;
  /// The time when the backup snapshot was created. This value is a UNIX timestamp. Unit: seconds.
  final String createdTime;
  /// The ID of the backup snapshot.
  final String id;
  /// The name of the Table store instance.
  final String instanceName;
  /// The ID of the backup job.
  final String jobId;
  /// The hash value of the parent backup snapshot.
  final String parentSnapshotHash;
  /// The time when the backup job ended. This value is a UNIX timestamp. Unit: milliseconds.
  final String rangeEnd;
  /// The time when the backup job started. This value is a UNIX timestamp. Unit: milliseconds.
  final String rangeStart;
  /// The retention period of the backup snapshot.
  final String retention;
  /// The hash value of the backup snapshot.
  final String snapshotHash;
  /// The ID of the backup snapshot.
  final String snapshotId;
  /// The type of the data source. Valid values: `ECS_FILE`,`PARTIAL_COMPLETE`,`FAILED`
  final String sourceType;
  /// The start time of the backup snapshot. This value is a UNIX timestamp. Unit: seconds.
  final String startTime;
  /// The status of the backup job. Valid values: `COMPLETE`,`PARTIAL_COMPLETE`,`FAILED`.
  final String status;
  /// The name of the table in the Table store instance.
  final String tableName;
  /// The time when the backup snapshot was updated. This value is a UNIX timestamp. Unit: seconds.
  final String updatedTime;
  /// The ID of the backup vault that stores the backup snapshot.
  final String vaultId;

  /// Creates a new [GetOtsSnapshotsSnapshot].
  /// [actualBytes] The actual amount of backup snapshots after duplicates are removed. Unit: bytes.
  /// [backupType] The backup type. Valid value: `COMPLETE`, which indicates full backup.
  /// [bytesTotal] The total amount of data. Unit: bytes.
  /// [completeTime] The time when the backup snapshot was completed. This value is a UNIX timestamp. Unit: seconds.
  /// [createTime] The time when the Table store instance was created. This value is a UNIX timestamp. Unit: seconds.
  /// [createdTime] The time when the backup snapshot was created. This value is a UNIX timestamp. Unit: seconds.
  /// [id] The ID of the backup snapshot.
  /// [instanceName] The name of the Table store instance.
  /// [jobId] The ID of the backup job.
  /// [parentSnapshotHash] The hash value of the parent backup snapshot.
  /// [rangeEnd] The time when the backup job ended. This value is a UNIX timestamp. Unit: milliseconds.
  /// [rangeStart] The time when the backup job started. This value is a UNIX timestamp. Unit: milliseconds.
  /// [retention] The retention period of the backup snapshot.
  /// [snapshotHash] The hash value of the backup snapshot.
  /// [snapshotId] The ID of the backup snapshot.
  /// [sourceType] The type of the data source. Valid values: `ECS_FILE`,`PARTIAL_COMPLETE`,`FAILED`
  /// [startTime] The start time of the backup snapshot. This value is a UNIX timestamp. Unit: seconds.
  /// [status] The status of the backup job. Valid values: `COMPLETE`,`PARTIAL_COMPLETE`,`FAILED`.
  /// [tableName] The name of the table in the Table store instance.
  /// [updatedTime] The time when the backup snapshot was updated. This value is a UNIX timestamp. Unit: seconds.
  /// [vaultId] The ID of the backup vault that stores the backup snapshot.
  GetOtsSnapshotsSnapshot({
    required this.actualBytes,
    required this.backupType,
    required this.bytesTotal,
    required this.completeTime,
    required this.createTime,
    required this.createdTime,
    required this.id,
    required this.instanceName,
    required this.jobId,
    required this.parentSnapshotHash,
    required this.rangeEnd,
    required this.rangeStart,
    required this.retention,
    required this.snapshotHash,
    required this.snapshotId,
    required this.sourceType,
    required this.startTime,
    required this.status,
    required this.tableName,
    required this.updatedTime,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualBytes': actualBytes,
      'backupType': backupType,
      'bytesTotal': bytesTotal,
      'completeTime': completeTime,
      'createTime': createTime,
      'createdTime': createdTime,
      'id': id,
      'instanceName': instanceName,
      'jobId': jobId,
      'parentSnapshotHash': parentSnapshotHash,
      'rangeEnd': rangeEnd,
      'rangeStart': rangeStart,
      'retention': retention,
      'snapshotHash': snapshotHash,
      'snapshotId': snapshotId,
      'sourceType': sourceType,
      'startTime': startTime,
      'status': status,
      'tableName': tableName,
      'updatedTime': updatedTime,
      'vaultId': vaultId,
    };
  }

  factory GetOtsSnapshotsSnapshot.fromMap(Map<String, dynamic> map) {
    return GetOtsSnapshotsSnapshot(
      actualBytes: map['actualBytes'] as String,
      backupType: map['backupType'] as String,
      bytesTotal: map['bytesTotal'] as String,
      completeTime: map['completeTime'] as String,
      createTime: map['createTime'] as String,
      createdTime: map['createdTime'] as String,
      id: map['id'] as String,
      instanceName: map['instanceName'] as String,
      jobId: map['jobId'] as String,
      parentSnapshotHash: map['parentSnapshotHash'] as String,
      rangeEnd: map['rangeEnd'] as String,
      rangeStart: map['rangeStart'] as String,
      retention: map['retention'] as String,
      snapshotHash: map['snapshotHash'] as String,
      snapshotId: map['snapshotId'] as String,
      sourceType: map['sourceType'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      tableName: map['tableName'] as String,
      updatedTime: map['updatedTime'] as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

