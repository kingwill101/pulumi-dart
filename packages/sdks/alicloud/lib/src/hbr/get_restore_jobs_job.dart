// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRestoreJobsJob {
  /// The actual size of Snapshot.
  final pulumi.Input<String> actualBytes;
  /// The actual number of files.
  final pulumi.Input<String> actualItems;
  /// The size of restore job recovered.
  final pulumi.Input<String> bytesDone;
  /// The total size of restore job recovered.
  final pulumi.Input<String> bytesTotal;
  /// The completion time of restore Job.
  final pulumi.Input<String> completeTime;
  /// The creation time of restore job.
  final pulumi.Input<String> createTime;
  final pulumi.Input<String> errorFile;
  /// The error message of recovery task execution.
  final pulumi.Input<String> errorMessage;
  /// The expiration time of restore job. Unix Time in seconds.
  final pulumi.Input<String> expireTime;
  /// The ID of the restore job.
  final pulumi.Input<String> id;
  /// The number of items restore job recovered.
  final pulumi.Input<String> itemsDone;
  /// The total number of items restore job recovered.
  final pulumi.Input<String> itemsTotal;
  /// Recovery Options.
  final pulumi.Input<String> options;
  final pulumi.Input<String> parentId;
  /// The recovery progress.
  final pulumi.Input<int> progress;
  /// The ID of restore job.
  final pulumi.Input<String> restoreJobId;
  /// The type of recovery destination. Valid Values: `ECS_FILE`, `OSS`, `NAS`.
  final pulumi.Input<String> restoreType;
  /// The hashcode of Snapshot.
  final pulumi.Input<String> snapshotHash;
  /// The ID of Snapshot.
  final pulumi.Input<String> snapshotId;
  /// The list of data source types. Valid values: `ECS_FILE`, `NAS`, `OSS`, `OTS_TABLE`,`UDM_ECS_ROLLBACK`.
  final pulumi.Input<String> sourceType;
  /// The start time of restore job. Unix Time in Seconds.
  final pulumi.Input<String> startTime;
  /// The status of restore job.
  final pulumi.Input<String> status;
  /// The name of target ofo OSS bucket.
  final pulumi.Input<String> targetBucket;
  final pulumi.Input<String> targetClientId;
  /// The creation time of destination file system.
  final pulumi.Input<String> targetCreateTime;
  final pulumi.Input<String> targetDataSourceId;
  /// The ID of destination file system.
  final pulumi.Input<String> targetFileSystemId;
  /// The ID of target ECS instance.
  final pulumi.Input<String> targetInstanceId;
  /// The target file path of ECS instance.
  final pulumi.Input<String> targetPath;
  /// The file prefix of target OSS object.
  final pulumi.Input<String> targetPrefix;
  /// The update Time of restore job. Unix Time in Seconds.
  final pulumi.Input<String> updatedTime;
  /// The ID of backup vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [GetRestoreJobsJob].
  /// [actualBytes] The actual size of Snapshot.
  /// [actualItems] The actual number of files.
  /// [bytesDone] The size of restore job recovered.
  /// [bytesTotal] The total size of restore job recovered.
  /// [completeTime] The completion time of restore Job.
  /// [createTime] The creation time of restore job.
  /// [errorFile] Required.
  /// [errorMessage] The error message of recovery task execution.
  /// [expireTime] The expiration time of restore job. Unix Time in seconds.
  /// [id] The ID of the restore job.
  /// [itemsDone] The number of items restore job recovered.
  /// [itemsTotal] The total number of items restore job recovered.
  /// [options] Recovery Options.
  /// [parentId] Required.
  /// [progress] The recovery progress.
  /// [restoreJobId] The ID of restore job.
  /// [restoreType] The type of recovery destination. Valid Values: `ECS_FILE`, `OSS`, `NAS`.
  /// [snapshotHash] The hashcode of Snapshot.
  /// [snapshotId] The ID of Snapshot.
  /// [sourceType] The list of data source types. Valid values: `ECS_FILE`, `NAS`, `OSS`, `OTS_TABLE`,`UDM_ECS_ROLLBACK`.
  /// [startTime] The start time of restore job. Unix Time in Seconds.
  /// [status] The status of restore job.
  /// [targetBucket] The name of target ofo OSS bucket.
  /// [targetClientId] Required.
  /// [targetCreateTime] The creation time of destination file system.
  /// [targetDataSourceId] Required.
  /// [targetFileSystemId] The ID of destination file system.
  /// [targetInstanceId] The ID of target ECS instance.
  /// [targetPath] The target file path of ECS instance.
  /// [targetPrefix] The file prefix of target OSS object.
  /// [updatedTime] The update Time of restore job. Unix Time in Seconds.
  /// [vaultId] The ID of backup vault.
  GetRestoreJobsJob({
    required this.actualBytes,
    required this.actualItems,
    required this.bytesDone,
    required this.bytesTotal,
    required this.completeTime,
    required this.createTime,
    required this.errorFile,
    required this.errorMessage,
    required this.expireTime,
    required this.id,
    required this.itemsDone,
    required this.itemsTotal,
    required this.options,
    required this.parentId,
    required this.progress,
    required this.restoreJobId,
    required this.restoreType,
    required this.snapshotHash,
    required this.snapshotId,
    required this.sourceType,
    required this.startTime,
    required this.status,
    required this.targetBucket,
    required this.targetClientId,
    required this.targetCreateTime,
    required this.targetDataSourceId,
    required this.targetFileSystemId,
    required this.targetInstanceId,
    required this.targetPath,
    required this.targetPrefix,
    required this.updatedTime,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualBytes': actualBytes,
      'actualItems': actualItems,
      'bytesDone': bytesDone,
      'bytesTotal': bytesTotal,
      'completeTime': completeTime,
      'createTime': createTime,
      'errorFile': errorFile,
      'errorMessage': errorMessage,
      'expireTime': expireTime,
      'id': id,
      'itemsDone': itemsDone,
      'itemsTotal': itemsTotal,
      'options': options,
      'parentId': parentId,
      'progress': progress,
      'restoreJobId': restoreJobId,
      'restoreType': restoreType,
      'snapshotHash': snapshotHash,
      'snapshotId': snapshotId,
      'sourceType': sourceType,
      'startTime': startTime,
      'status': status,
      'targetBucket': targetBucket,
      'targetClientId': targetClientId,
      'targetCreateTime': targetCreateTime,
      'targetDataSourceId': targetDataSourceId,
      'targetFileSystemId': targetFileSystemId,
      'targetInstanceId': targetInstanceId,
      'targetPath': targetPath,
      'targetPrefix': targetPrefix,
      'updatedTime': updatedTime,
      'vaultId': vaultId,
    };
  }

  factory GetRestoreJobsJob.fromMap(Map<String, dynamic> map) {
    return GetRestoreJobsJob(
      actualBytes: (map['actualBytes'] as String).input(),
      actualItems: (map['actualItems'] as String).input(),
      bytesDone: (map['bytesDone'] as String).input(),
      bytesTotal: (map['bytesTotal'] as String).input(),
      completeTime: (map['completeTime'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      errorFile: (map['errorFile'] as String).input(),
      errorMessage: (map['errorMessage'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      id: (map['id'] as String).input(),
      itemsDone: (map['itemsDone'] as String).input(),
      itemsTotal: (map['itemsTotal'] as String).input(),
      options: (map['options'] as String).input(),
      parentId: (map['parentId'] as String).input(),
      progress: (map['progress'] as int).input(),
      restoreJobId: (map['restoreJobId'] as String).input(),
      restoreType: (map['restoreType'] as String).input(),
      snapshotHash: (map['snapshotHash'] as String).input(),
      snapshotId: (map['snapshotId'] as String).input(),
      sourceType: (map['sourceType'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      status: (map['status'] as String).input(),
      targetBucket: (map['targetBucket'] as String).input(),
      targetClientId: (map['targetClientId'] as String).input(),
      targetCreateTime: (map['targetCreateTime'] as String).input(),
      targetDataSourceId: (map['targetDataSourceId'] as String).input(),
      targetFileSystemId: (map['targetFileSystemId'] as String).input(),
      targetInstanceId: (map['targetInstanceId'] as String).input(),
      targetPath: (map['targetPath'] as String).input(),
      targetPrefix: (map['targetPrefix'] as String).input(),
      updatedTime: (map['updatedTime'] as String).input(),
      vaultId: (map['vaultId'] as String).input(),
    );
  }
}

