// ignore_for_file: unused_element, unnecessary_cast


class GetRestoreJobsJob {
  /// The actual size of Snapshot.
  final String actualBytes;
  /// The actual number of files.
  final String actualItems;
  /// The size of restore job recovered.
  final String bytesDone;
  /// The total size of restore job recovered.
  final String bytesTotal;
  /// The completion time of restore Job.
  final String completeTime;
  /// The creation time of restore job.
  final String createTime;
  final String errorFile;
  /// The error message of recovery task execution.
  final String errorMessage;
  /// The expiration time of restore job. Unix Time in seconds.
  final String expireTime;
  /// The ID of the restore job.
  final String id;
  /// The number of items restore job recovered.
  final String itemsDone;
  /// The total number of items restore job recovered.
  final String itemsTotal;
  /// Recovery Options.
  final String options;
  final String parentId;
  /// The recovery progress.
  final int progress;
  /// The ID of restore job.
  final String restoreJobId;
  /// The type of recovery destination. Valid Values: `ECS_FILE`, `OSS`, `NAS`.
  final String restoreType;
  /// The hashcode of Snapshot.
  final String snapshotHash;
  /// The ID of Snapshot.
  final String snapshotId;
  /// The list of data source types. Valid values: `ECS_FILE`, `NAS`, `OSS`, `OTS_TABLE`,`UDM_ECS_ROLLBACK`.
  final String sourceType;
  /// The start time of restore job. Unix Time in Seconds.
  final String startTime;
  /// The status of restore job.
  final String status;
  /// The name of target ofo OSS bucket.
  final String targetBucket;
  final String targetClientId;
  /// The creation time of destination file system.
  final String targetCreateTime;
  final String targetDataSourceId;
  /// The ID of destination file system.
  final String targetFileSystemId;
  /// The ID of target ECS instance.
  final String targetInstanceId;
  /// The target file path of ECS instance.
  final String targetPath;
  /// The file prefix of target OSS object.
  final String targetPrefix;
  /// The update Time of restore job. Unix Time in Seconds.
  final String updatedTime;
  /// The ID of backup vault.
  final String vaultId;

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
      actualBytes: map['actualBytes'] as String,
      actualItems: map['actualItems'] as String,
      bytesDone: map['bytesDone'] as String,
      bytesTotal: map['bytesTotal'] as String,
      completeTime: map['completeTime'] as String,
      createTime: map['createTime'] as String,
      errorFile: map['errorFile'] as String,
      errorMessage: map['errorMessage'] as String,
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      itemsDone: map['itemsDone'] as String,
      itemsTotal: map['itemsTotal'] as String,
      options: map['options'] as String,
      parentId: map['parentId'] as String,
      progress: map['progress'] as int,
      restoreJobId: map['restoreJobId'] as String,
      restoreType: map['restoreType'] as String,
      snapshotHash: map['snapshotHash'] as String,
      snapshotId: map['snapshotId'] as String,
      sourceType: map['sourceType'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      targetBucket: map['targetBucket'] as String,
      targetClientId: map['targetClientId'] as String,
      targetCreateTime: map['targetCreateTime'] as String,
      targetDataSourceId: map['targetDataSourceId'] as String,
      targetFileSystemId: map['targetFileSystemId'] as String,
      targetInstanceId: map['targetInstanceId'] as String,
      targetPath: map['targetPath'] as String,
      targetPrefix: map['targetPrefix'] as String,
      updatedTime: map['updatedTime'] as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

