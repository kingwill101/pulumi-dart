// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_jobs_job_ots_detail.dart';

class GetBackupJobsJob {
  /// The actual data volume of the backup task (After deduplication) . Unit byte.
  final String actualBytes;
  /// The actual number of items in the backup task. (Currently only file backup is available).
  final String actualItems;
  /// The name of backup job.
  final String backJobName;
  /// The ID of the backup job.
  final String backupJobId;
  /// Backup type. Valid values: `COMPLETE`(full backup).
  final String backupType;
  /// The name of target OSS bucket.
  final String bucket;
  /// The amount of backup data (Incremental). Unit byte.
  final String bytesDone;
  /// The total amount of data sources. Unit byte.
  final String bytesTotal;
  /// The completion time of backup job. UNIX time seconds.
  final String completeTime;
  /// The creation time of backup job. UNIX time seconds.
  final String createTime;
  /// The role name created in the original account RAM backup by the cross account managed by the current account. It is valid only when `source_type` is `ECS_FILE`, `NAS`, `OSS` or `OTS`.
  final String crossAccountRoleName;
  /// The type of the cross account backup. It is valid only when `source_type` is `ECS_FILE`, `NAS`, `OSS` or `OTS`.
  final String crossAccountType;
  /// The original account ID of the cross account backup managed by the current account. It is valid only when `source_type` is `ECS_FILE`, `NAS`, `OSS` or `OTS`.
  final int crossAccountUserId;
  /// Error message.
  final String errorMessage;
  /// Exclude path. String of Json list. Up to 255 characters. e.g. `"[\"/home/work\"]"`
  final String exclude;
  /// The ID of destination file system.
  final String fileSystemId;
  /// The ID of the backup job.
  final String id;
  /// Include path. String of Json list. Up to 255 characters. e.g. `"[\"/var\"]"`
  final String include;
  /// The ID of target ECS instance.
  final String instanceId;
  /// The number of items restore job recovered.
  final String itemsDone;
  /// The total number of items restore job recovered.
  final String itemsTotal;
  /// File system creation time. UNIX time in seconds.
  final String nasCreateTime;
  final List<GetBackupJobsJobOtsDetail> otsDetails;
  /// List of backup path. e.g. `["/home", "/var"]`.
  final List<String> paths;
  /// The ID of a backup plan.
  final String planId;
  /// The prefix of Oss bucket files.
  final String prefix;
  /// Backup progress. The value is 100%*100.
  final String progress;
  /// The type of data source. Valid Values: `ECS_FILE`, `OSS`, `NAS`, `UDM_DISK`.
  final String sourceType;
  /// The scheduled backup start time. UNIX time seconds.
  final String startTime;
  /// The status of restore job. Valid values: `COMPLETE` , `PARTIAL_COMPLETE`, `FAILED`.
  final String status;
  /// The update time of backup job. UNIX time seconds.
  final String updatedTime;
  /// The ID of backup vault.
  final String vaultId;

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
  GetBackupJobsJob({
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
      'otsDetails': pulumi.Input.encodeList<GetBackupJobsJobOtsDetail, Map<String, dynamic>>(otsDetails, (value) => value.toMap()),
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
      actualBytes: map['actualBytes'] as String,
      actualItems: map['actualItems'] as String,
      backJobName: map['backJobName'] as String,
      backupJobId: map['backupJobId'] as String,
      backupType: map['backupType'] as String,
      bucket: map['bucket'] as String,
      bytesDone: map['bytesDone'] as String,
      bytesTotal: map['bytesTotal'] as String,
      completeTime: map['completeTime'] as String,
      createTime: map['createTime'] as String,
      crossAccountRoleName: map['crossAccountRoleName'] as String,
      crossAccountType: map['crossAccountType'] as String,
      crossAccountUserId: map['crossAccountUserId'] as int,
      errorMessage: map['errorMessage'] as String,
      exclude: map['exclude'] as String,
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      include: map['include'] as String,
      instanceId: map['instanceId'] as String,
      itemsDone: map['itemsDone'] as String,
      itemsTotal: map['itemsTotal'] as String,
      nasCreateTime: map['nasCreateTime'] as String,
      otsDetails: pulumi.Input.decodeList<GetBackupJobsJobOtsDetail>(map['otsDetails'], (value) => GetBackupJobsJobOtsDetail.fromMap((value as Map).cast<String, dynamic>())),
      paths: (map['paths'] as List).cast<String>(),
      planId: map['planId'] as String,
      prefix: map['prefix'] as String,
      progress: map['progress'] as String,
      sourceType: map['sourceType'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      updatedTime: map['updatedTime'] as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

