// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_jobs_job_ots_detail.dart';

class GetBackupJobsJob {
  /// The actual data volume of the backup task (After deduplication) . Unit byte.
  final pulumi.Input<String> actualBytes;
  /// The actual number of items in the backup task. (Currently only file backup is available).
  final pulumi.Input<String> actualItems;
  /// The name of backup job.
  final pulumi.Input<String> backJobName;
  /// The ID of the backup job.
  final pulumi.Input<String> backupJobId;
  /// Backup type. Valid values: `COMPLETE`(full backup).
  final pulumi.Input<String> backupType;
  /// The name of target OSS bucket.
  final pulumi.Input<String> bucket;
  /// The amount of backup data (Incremental). Unit byte.
  final pulumi.Input<String> bytesDone;
  /// The total amount of data sources. Unit byte.
  final pulumi.Input<String> bytesTotal;
  /// The completion time of backup job. UNIX time seconds.
  final pulumi.Input<String> completeTime;
  /// The creation time of backup job. UNIX time seconds.
  final pulumi.Input<String> createTime;
  /// The role name created in the original account RAM backup by the cross account managed by the current account. It is valid only when `source_type` is `ECS_FILE`, `NAS`, `OSS` or `OTS`.
  final pulumi.Input<String> crossAccountRoleName;
  /// The type of the cross account backup. It is valid only when `source_type` is `ECS_FILE`, `NAS`, `OSS` or `OTS`.
  final pulumi.Input<String> crossAccountType;
  /// The original account ID of the cross account backup managed by the current account. It is valid only when `source_type` is `ECS_FILE`, `NAS`, `OSS` or `OTS`.
  final pulumi.Input<int> crossAccountUserId;
  /// Error message.
  final pulumi.Input<String> errorMessage;
  /// Exclude path. String of Json list. Up to 255 characters. e.g. `"[\"/home/work\"]"`
  final pulumi.Input<String> exclude;
  /// The ID of destination file system.
  final pulumi.Input<String> fileSystemId;
  /// The ID of the backup job.
  final pulumi.Input<String> id;
  /// Include path. String of Json list. Up to 255 characters. e.g. `"[\"/var\"]"`
  final pulumi.Input<String> include;
  /// The ID of target ECS instance.
  final pulumi.Input<String> instanceId;
  /// The number of items restore job recovered.
  final pulumi.Input<String> itemsDone;
  /// The total number of items restore job recovered.
  final pulumi.Input<String> itemsTotal;
  /// File system creation time. UNIX time in seconds.
  final pulumi.Input<String> nasCreateTime;
  final pulumi.Input<List<GetBackupJobsJobOtsDetail>> otsDetails;
  /// List of backup path. e.g. `["/home", "/var"]`.
  final pulumi.Input<List<String>> paths;
  /// The ID of a backup plan.
  final pulumi.Input<String> planId;
  /// The prefix of Oss bucket files.
  final pulumi.Input<String> prefix;
  /// Backup progress. The value is 100%*100.
  final pulumi.Input<String> progress;
  /// The type of data source. Valid Values: `ECS_FILE`, `OSS`, `NAS`, `UDM_DISK`.
  final pulumi.Input<String> sourceType;
  /// The scheduled backup start time. UNIX time seconds.
  final pulumi.Input<String> startTime;
  /// The status of restore job. Valid values: `COMPLETE` , `PARTIAL_COMPLETE`, `FAILED`.
  final pulumi.Input<String> status;
  /// The update time of backup job. UNIX time seconds.
  final pulumi.Input<String> updatedTime;
  /// The ID of backup vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [GetBackupJobsJob].
  /// [actualBytes] The actual data volume of the backup task (After deduplication) . Unit byte.
  /// [actualItems] The actual number of items in the backup task. (Currently only file backup is available).
  /// [backJobName] The name of backup job.
  /// [backupJobId] The ID of the backup job.
  /// [backupType] Backup type. Valid values: `COMPLETE`(full backup).
  /// [bucket] The name of target OSS bucket.
  /// [bytesDone] The amount of backup data (Incremental). Unit byte.
  /// [bytesTotal] The total amount of data sources. Unit byte.
  /// [completeTime] The completion time of backup job. UNIX time seconds.
  /// [createTime] The creation time of backup job. UNIX time seconds.
  /// [crossAccountRoleName] The role name created in the original account RAM backup by the cross account managed by the current account. It is valid only when `source_type` is `ECS_FILE`, `NAS`, `OSS` or `OTS`.
  /// [crossAccountType] The type of the cross account backup. It is valid only when `source_type` is `ECS_FILE`, `NAS`, `OSS` or `OTS`.
  /// [crossAccountUserId] The original account ID of the cross account backup managed by the current account. It is valid only when `source_type` is `ECS_FILE`, `NAS`, `OSS` or `OTS`.
  /// [errorMessage] Error message.
  /// [exclude] Exclude path. String of Json list. Up to 255 characters. e.g. `"[\"/home/work\"]"`
  /// [fileSystemId] The ID of destination file system.
  /// [id] The ID of the backup job.
  /// [include] Include path. String of Json list. Up to 255 characters. e.g. `"[\"/var\"]"`
  /// [instanceId] The ID of target ECS instance.
  /// [itemsDone] The number of items restore job recovered.
  /// [itemsTotal] The total number of items restore job recovered.
  /// [nasCreateTime] File system creation time. UNIX time in seconds.
  /// [otsDetails] Required.
  /// [paths] List of backup path. e.g. `["/home", "/var"]`.
  /// [planId] The ID of a backup plan.
  /// [prefix] The prefix of Oss bucket files.
  /// [progress] Backup progress. The value is 100%*100.
  /// [sourceType] The type of data source. Valid Values: `ECS_FILE`, `OSS`, `NAS`, `UDM_DISK`.
  /// [startTime] The scheduled backup start time. UNIX time seconds.
  /// [status] The status of restore job. Valid values: `COMPLETE` , `PARTIAL_COMPLETE`, `FAILED`.
  /// [updatedTime] The update time of backup job. UNIX time seconds.
  /// [vaultId] The ID of backup vault.
  const GetBackupJobsJob({
    required this.actualBytes,
    required this.actualItems,
    required this.backJobName,
    required this.backupJobId,
    required this.backupType,
    required this.bucket,
    required this.bytesDone,
    required this.bytesTotal,
    required this.completeTime,
    required this.createTime,
    required this.crossAccountRoleName,
    required this.crossAccountType,
    required this.crossAccountUserId,
    required this.errorMessage,
    required this.exclude,
    required this.fileSystemId,
    required this.id,
    required this.include,
    required this.instanceId,
    required this.itemsDone,
    required this.itemsTotal,
    required this.nasCreateTime,
    required this.otsDetails,
    required this.paths,
    required this.planId,
    required this.prefix,
    required this.progress,
    required this.sourceType,
    required this.startTime,
    required this.status,
    required this.updatedTime,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualBytes': actualBytes,
      'actualItems': actualItems,
      'backJobName': backJobName,
      'backupJobId': backupJobId,
      'backupType': backupType,
      'bucket': bucket,
      'bytesDone': bytesDone,
      'bytesTotal': bytesTotal,
      'completeTime': completeTime,
      'createTime': createTime,
      'crossAccountRoleName': crossAccountRoleName,
      'crossAccountType': crossAccountType,
      'crossAccountUserId': crossAccountUserId,
      'errorMessage': errorMessage,
      'exclude': exclude,
      'fileSystemId': fileSystemId,
      'id': id,
      'include': include,
      'instanceId': instanceId,
      'itemsDone': itemsDone,
      'itemsTotal': itemsTotal,
      'nasCreateTime': nasCreateTime,
      'otsDetails': pulumi.Input.mapInputValue<List<GetBackupJobsJobOtsDetail>, List<Map<String, dynamic>>>(otsDetails, (value) => pulumi.Input.encodeList<GetBackupJobsJobOtsDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paths': paths,
      'planId': planId,
      'prefix': prefix,
      'progress': progress,
      'sourceType': sourceType,
      'startTime': startTime,
      'status': status,
      'updatedTime': updatedTime,
      'vaultId': vaultId,
    };
  }

  factory GetBackupJobsJob.fromMap(Map<String, dynamic> map) {
    return GetBackupJobsJob(
      actualBytes: pulumi.Input.fromValue(map['actualBytes'] as String),
      actualItems: pulumi.Input.fromValue(map['actualItems'] as String),
      backJobName: pulumi.Input.fromValue(map['backJobName'] as String),
      backupJobId: pulumi.Input.fromValue(map['backupJobId'] as String),
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      bytesDone: pulumi.Input.fromValue(map['bytesDone'] as String),
      bytesTotal: pulumi.Input.fromValue(map['bytesTotal'] as String),
      completeTime: pulumi.Input.fromValue(map['completeTime'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      crossAccountRoleName: pulumi.Input.fromValue(map['crossAccountRoleName'] as String),
      crossAccountType: pulumi.Input.fromValue(map['crossAccountType'] as String),
      crossAccountUserId: pulumi.Input.fromValue(map['crossAccountUserId'] as int),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      exclude: pulumi.Input.fromValue(map['exclude'] as String),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      include: pulumi.Input.fromValue(map['include'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      itemsDone: pulumi.Input.fromValue(map['itemsDone'] as String),
      itemsTotal: pulumi.Input.fromValue(map['itemsTotal'] as String),
      nasCreateTime: pulumi.Input.fromValue(map['nasCreateTime'] as String),
      otsDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBackupJobsJobOtsDetail>(map['otsDetails']!, (value) => GetBackupJobsJobOtsDetail.fromMap((value as Map).cast<String, dynamic>()))),
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      planId: pulumi.Input.fromValue(map['planId'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      progress: pulumi.Input.fromValue(map['progress'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      updatedTime: pulumi.Input.fromValue(map['updatedTime'] as String),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}

