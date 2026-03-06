// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOssBackupPlansPlan {
  /// Backup type. Valid values: `COMPLETE`.
  final pulumi.Input<String> backupType;
  /// The name of OSS bucket.
  final pulumi.Input<String> bucket;
  /// The creation time of the backup plan. UNIX time in seconds.
  final pulumi.Input<String> createdTime;
  /// Whether to be suspended. Valid values: `true`, `false`.
  final pulumi.Input<bool> disabled;
  /// The ID of Oss backup plan.
  final pulumi.Input<String> id;
  /// The ID of Oss backup plan.
  final pulumi.Input<String> ossBackupPlanId;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  final pulumi.Input<String> ossBackupPlanName;
  /// Backup prefix.
  final pulumi.Input<String> prefix;
  /// Backup retention days, the minimum is 1.
  final pulumi.Input<String> retention;
  /// Backup strategy. Optional format: I|{startTime}|{interval}. It means to execute a backup task every {interval} starting from {startTime}. The backup task for the elapsed time will not be compensated. If the last backup task is not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  final pulumi.Input<String> schedule;
  /// The update time of the backup plan. UNIX time in seconds.
  final pulumi.Input<String> updatedTime;
  /// The ID of backup vault.
  final pulumi.Input<String> vaultId;

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
  const GetOssBackupPlansPlan({
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
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      ossBackupPlanId: pulumi.Input.fromValue(map['ossBackupPlanId'] as String),
      ossBackupPlanName: pulumi.Input.fromValue(map['ossBackupPlanName'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      retention: pulumi.Input.fromValue(map['retention'] as String),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      updatedTime: pulumi.Input.fromValue(map['updatedTime'] as String),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}

