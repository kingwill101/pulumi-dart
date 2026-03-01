// ignore_for_file: unused_element, unnecessary_cast


class GetSnapshotsSnapshot {
  /// The actual data volume of the snapshot. Unit byte.
  final String actualBytes;
  /// The actual number of items in the snapshot. (Currently only file backup is available).
  final String actualItems;
  /// Backup type. Possible values: `COMPLETE` (full backup).
  final String backupType;
  /// The name of OSS bucket.
  final String bucket;
  /// The incremental amount of backup data. Unit byte.
  final String bytesDone;
  /// The total amount of data sources. Unit byte.
  final String bytesTotal;
  /// The ID of ECS backup client.
  final String clientId;
  /// The time when the snapshot completed. UNIX time in seconds.
  final String completeTime;
  /// File System Creation Time of Nas. Unix Time Seconds.
  final String createTime;
  /// Snapshot creation time. UNIX time in seconds.
  final String createdTime;
  final String errorFile;
  /// The ID of NAS File system.
  final String fileSystemId;
  /// The ID of the Snapshot.
  final String id;
  /// The ID of ECS instance.
  final String instanceId;
  /// The number of backup items. (Currently only file backup is available).
  final String itemsDone;
  /// The total number of data source items. (Currently only file backup is available).
  final String itemsTotal;
  /// The job ID of backup task.
  final String jobId;
  /// The hashcode of parent backup snapshot.
  final String parentSnapshotHash;
  /// Backup Path.
  final String path;
  /// Backup file prefix.
  final String prefix;
  /// The number of days to keep.
  final String retention;
  /// The hashcode of Snapshot.
  final String snapshotHash;
  /// The ID of the Snapshot.
  final String snapshotId;
  /// Data source type, optional values: `ECS_FILE`, `OSS`, `NAS`.
  final String sourceType;
  /// The start time of the snapshot. UNIX time in seconds.
  final String startTime;
  /// The status of snapshot execution. Possible values: `COMPLETE`, `PARTIAL_COMPLETE`, `FAILED`.
  final String status;
  /// The update time of snapshot. UNIX time in seconds.
  final String updatedTime;

  /// Creates a new [GetSnapshotsSnapshot].
  /// [actualBytes] The actual data volume of the snapshot. Unit byte.
  /// [actualItems] The actual number of items in the snapshot. (Currently only file backup is available).
  /// [backupType] Backup type. Possible values: `COMPLETE` (full backup).
  /// [bucket] The name of OSS bucket.
  /// [bytesDone] The incremental amount of backup data. Unit byte.
  /// [bytesTotal] The total amount of data sources. Unit byte.
  /// [clientId] The ID of ECS backup client.
  /// [completeTime] The time when the snapshot completed. UNIX time in seconds.
  /// [createTime] File System Creation Time of Nas. Unix Time Seconds.
  /// [createdTime] Snapshot creation time. UNIX time in seconds.
  /// [errorFile] Required.
  /// [fileSystemId] The ID of NAS File system.
  /// [id] The ID of the Snapshot.
  /// [instanceId] The ID of ECS instance.
  /// [itemsDone] The number of backup items. (Currently only file backup is available).
  /// [itemsTotal] The total number of data source items. (Currently only file backup is available).
  /// [jobId] The job ID of backup task.
  /// [parentSnapshotHash] The hashcode of parent backup snapshot.
  /// [path] Backup Path.
  /// [prefix] Backup file prefix.
  /// [retention] The number of days to keep.
  /// [snapshotHash] The hashcode of Snapshot.
  /// [snapshotId] The ID of the Snapshot.
  /// [sourceType] Data source type, optional values: `ECS_FILE`, `OSS`, `NAS`.
  /// [startTime] The start time of the snapshot. UNIX time in seconds.
  /// [status] The status of snapshot execution. Possible values: `COMPLETE`, `PARTIAL_COMPLETE`, `FAILED`.
  /// [updatedTime] The update time of snapshot. UNIX time in seconds.
  GetSnapshotsSnapshot({
    required this.actualBytes,
    required this.actualItems,
    required this.backupType,
    required this.bucket,
    required this.bytesDone,
    required this.bytesTotal,
    required this.clientId,
    required this.completeTime,
    required this.createTime,
    required this.createdTime,
    required this.errorFile,
    required this.fileSystemId,
    required this.id,
    required this.instanceId,
    required this.itemsDone,
    required this.itemsTotal,
    required this.jobId,
    required this.parentSnapshotHash,
    required this.path,
    required this.prefix,
    required this.retention,
    required this.snapshotHash,
    required this.snapshotId,
    required this.sourceType,
    required this.startTime,
    required this.status,
    required this.updatedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualBytes': actualBytes,
      'actualItems': actualItems,
      'backupType': backupType,
      'bucket': bucket,
      'bytesDone': bytesDone,
      'bytesTotal': bytesTotal,
      'clientId': clientId,
      'completeTime': completeTime,
      'createTime': createTime,
      'createdTime': createdTime,
      'errorFile': errorFile,
      'fileSystemId': fileSystemId,
      'id': id,
      'instanceId': instanceId,
      'itemsDone': itemsDone,
      'itemsTotal': itemsTotal,
      'jobId': jobId,
      'parentSnapshotHash': parentSnapshotHash,
      'path': path,
      'prefix': prefix,
      'retention': retention,
      'snapshotHash': snapshotHash,
      'snapshotId': snapshotId,
      'sourceType': sourceType,
      'startTime': startTime,
      'status': status,
      'updatedTime': updatedTime,
    };
  }

  factory GetSnapshotsSnapshot.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsSnapshot(
      actualBytes: map['actualBytes'] as String,
      actualItems: map['actualItems'] as String,
      backupType: map['backupType'] as String,
      bucket: map['bucket'] as String,
      bytesDone: map['bytesDone'] as String,
      bytesTotal: map['bytesTotal'] as String,
      clientId: map['clientId'] as String,
      completeTime: map['completeTime'] as String,
      createTime: map['createTime'] as String,
      createdTime: map['createdTime'] as String,
      errorFile: map['errorFile'] as String,
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      itemsDone: map['itemsDone'] as String,
      itemsTotal: map['itemsTotal'] as String,
      jobId: map['jobId'] as String,
      parentSnapshotHash: map['parentSnapshotHash'] as String,
      path: map['path'] as String,
      prefix: map['prefix'] as String,
      retention: map['retention'] as String,
      snapshotHash: map['snapshotHash'] as String,
      snapshotId: map['snapshotId'] as String,
      sourceType: map['sourceType'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      updatedTime: map['updatedTime'] as String,
    );
  }
}

