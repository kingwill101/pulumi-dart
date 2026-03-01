// ignore_for_file: unused_element, unnecessary_cast


class GetOssBackupPlansPlan {
  /// Backup type. Valid values: `COMPLETE`.
  final String backupType;
  /// The name of OSS bucket.
  final String bucket;
  /// The creation time of the backup plan. UNIX time in seconds.
  final String createdTime;
  /// Whether to be suspended. Valid values: `true`, `false`.
  final bool disabled;
  /// The ID of Oss backup plan.
  final String id;
  /// The ID of Oss backup plan.
  final String ossBackupPlanId;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  final String ossBackupPlanName;
  /// Backup prefix.
  final String prefix;
  /// Backup retention days, the minimum is 1.
  final String retention;
  /// Backup strategy. Optional format: I|{startTime}|{interval}. It means to execute a backup task every {interval} starting from {startTime}. The backup task for the elapsed time will not be compensated. If the last backup task is not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  final String schedule;
  /// The update time of the backup plan. UNIX time in seconds.
  final String updatedTime;
  /// The ID of backup vault.
  final String vaultId;

  /// Creates a new [GetOssBackupPlansPlan].
  /// [backupType] Backup type. Valid values: `COMPLETE`.
  /// [bucket] The name of OSS bucket.
  /// [createdTime] The creation time of the backup plan. UNIX time in seconds.
  /// [disabled] Whether to be suspended. Valid values: `true`, `false`.
  /// [id] The ID of Oss backup plan.
  /// [ossBackupPlanId] The ID of Oss backup plan.
  /// [ossBackupPlanName] The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  /// [prefix] Backup prefix.
  /// [retention] Backup retention days, the minimum is 1.
  /// [schedule] Backup strategy. Optional format: I|{startTime}|{interval}. It means to execute a backup task every {interval} starting from {startTime}. The backup task for the elapsed time will not be compensated. If the last backup task is not completed yet, the next backup task will not be triggered.
  /// [updatedTime] The update time of the backup plan. UNIX time in seconds.
  /// [vaultId] The ID of backup vault.
  GetOssBackupPlansPlan({
    required this.backupType,
    required this.bucket,
    required this.createdTime,
    required this.disabled,
    required this.id,
    required this.ossBackupPlanId,
    required this.ossBackupPlanName,
    required this.prefix,
    required this.retention,
    required this.schedule,
    required this.updatedTime,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': backupType,
      'bucket': bucket,
      'createdTime': createdTime,
      'disabled': disabled,
      'id': id,
      'ossBackupPlanId': ossBackupPlanId,
      'ossBackupPlanName': ossBackupPlanName,
      'prefix': prefix,
      'retention': retention,
      'schedule': schedule,
      'updatedTime': updatedTime,
      'vaultId': vaultId,
    };
  }

  factory GetOssBackupPlansPlan.fromMap(Map<String, dynamic> map) {
    return GetOssBackupPlansPlan(
      backupType: map['backupType'] as String,
      bucket: map['bucket'] as String,
      createdTime: map['createdTime'] as String,
      disabled: map['disabled'] as bool,
      id: map['id'] as String,
      ossBackupPlanId: map['ossBackupPlanId'] as String,
      ossBackupPlanName: map['ossBackupPlanName'] as String,
      prefix: map['prefix'] as String,
      retention: map['retention'] as String,
      schedule: map['schedule'] as String,
      updatedTime: map['updatedTime'] as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

