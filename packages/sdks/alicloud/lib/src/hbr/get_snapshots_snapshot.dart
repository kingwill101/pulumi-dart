// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnapshotsSnapshot {
  /// The actual data volume of the snapshot. Unit byte.
  final pulumi.Input<String> actualBytes;
  /// The actual number of items in the snapshot. (Currently only file backup is available).
  final pulumi.Input<String> actualItems;
  /// Backup type. Possible values: `COMPLETE` (full backup).
  final pulumi.Input<String> backupType;
  /// The name of OSS bucket.
  final pulumi.Input<String> bucket;
  /// The incremental amount of backup data. Unit byte.
  final pulumi.Input<String> bytesDone;
  /// The total amount of data sources. Unit byte.
  final pulumi.Input<String> bytesTotal;
  /// The ID of ECS backup client.
  final pulumi.Input<String> clientId;
  /// The time when the snapshot completed. UNIX time in seconds.
  final pulumi.Input<String> completeTime;
  /// File System Creation Time of Nas. Unix Time Seconds.
  final pulumi.Input<String> createTime;
  /// Snapshot creation time. UNIX time in seconds.
  final pulumi.Input<String> createdTime;
  final pulumi.Input<String> errorFile;
  /// The ID of NAS File system.
  final pulumi.Input<String> fileSystemId;
  /// The ID of the Snapshot.
  final pulumi.Input<String> id;
  /// The ID of ECS instance.
  final pulumi.Input<String> instanceId;
  /// The number of backup items. (Currently only file backup is available).
  final pulumi.Input<String> itemsDone;
  /// The total number of data source items. (Currently only file backup is available).
  final pulumi.Input<String> itemsTotal;
  /// The job ID of backup task.
  final pulumi.Input<String> jobId;
  /// The hashcode of parent backup snapshot.
  final pulumi.Input<String> parentSnapshotHash;
  /// Backup Path.
  final pulumi.Input<String> path;
  /// Backup file prefix.
  final pulumi.Input<String> prefix;
  /// The number of days to keep.
  final pulumi.Input<String> retention;
  /// The hashcode of Snapshot.
  final pulumi.Input<String> snapshotHash;
  /// The ID of the Snapshot.
  final pulumi.Input<String> snapshotId;
  /// Data source type, optional values: `ECS_FILE`, `OSS`, `NAS`.
  final pulumi.Input<String> sourceType;
  /// The start time of the snapshot. UNIX time in seconds.
  final pulumi.Input<String> startTime;
  /// The status of snapshot execution. Possible values: `COMPLETE`, `PARTIAL_COMPLETE`, `FAILED`.
  final pulumi.Input<String> status;
  /// The update time of snapshot. UNIX time in seconds.
  final pulumi.Input<String> updatedTime;

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
      actualBytes: pulumi.Input.fromValue(map['actualBytes'] as String),
      actualItems: pulumi.Input.fromValue(map['actualItems'] as String),
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      bytesDone: pulumi.Input.fromValue(map['bytesDone'] as String),
      bytesTotal: pulumi.Input.fromValue(map['bytesTotal'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      completeTime: pulumi.Input.fromValue(map['completeTime'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      errorFile: pulumi.Input.fromValue(map['errorFile'] as String),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      itemsDone: pulumi.Input.fromValue(map['itemsDone'] as String),
      itemsTotal: pulumi.Input.fromValue(map['itemsTotal'] as String),
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      parentSnapshotHash: pulumi.Input.fromValue(map['parentSnapshotHash'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      retention: pulumi.Input.fromValue(map['retention'] as String),
      snapshotHash: pulumi.Input.fromValue(map['snapshotHash'] as String),
      snapshotId: pulumi.Input.fromValue(map['snapshotId'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      updatedTime: pulumi.Input.fromValue(map['updatedTime'] as String),
    );
  }
}

