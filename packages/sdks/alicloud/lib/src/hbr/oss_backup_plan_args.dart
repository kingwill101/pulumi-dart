// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_oss_backup_plan_oss_backup_plan_args_doc}
/// The set of arguments for OssBackupPlan.
/// {@endtemplate}
/// {@macro pulumi_hbr_oss_backup_plan_oss_backup_plan_args_doc}
class OssBackupPlanArgs {
  /// Backup type. Valid values: `COMPLETE`.
  final pulumi.Input<String> backupType;
  /// The name of OSS bucket.
  final pulumi.Input<String> bucket;
  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  final pulumi.Input<String>? crossAccountRoleName;
  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  final pulumi.Input<String>? crossAccountType;
  /// The original account ID of the cross account backup managed by the current account.
  final pulumi.Input<int>? crossAccountUserId;
  /// Whether to disable the backup task. Valid values: `true`, `false`.
  final pulumi.Input<bool>? disabled;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  final pulumi.Input<String> ossBackupPlanName;
  /// Backup prefix. Once specified, only objects with matching prefixes will be backed up.
  final pulumi.Input<String>? prefix;
  /// Backup retention days, the minimum is 1.
  final pulumi.Input<String> retention;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  final pulumi.Input<String> schedule;
  /// The ID of backup vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [OssBackupPlanArgs].
  /// [backupType] Backup type. Valid values: `COMPLETE`.
  /// [bucket] The name of OSS bucket.
  /// [crossAccountRoleName] The role name created in the original account RAM backup by the cross account managed by the current account.
  /// [crossAccountType] The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  /// [crossAccountUserId] The original account ID of the cross account backup managed by the current account.
  /// [disabled] Whether to disable the backup task. Valid values: `true`, `false`.
  /// [ossBackupPlanName] The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  /// [prefix] Backup prefix. Once specified, only objects with matching prefixes will be backed up.
  /// [retention] Backup retention days, the minimum is 1.
  /// [schedule] Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// [vaultId] The ID of backup vault.
  OssBackupPlanArgs({
    required pulumi.Output<String> backupType,
    required pulumi.Output<String> bucket,
    pulumi.Output<String>? crossAccountRoleName,
    pulumi.Output<String>? crossAccountType,
    pulumi.Output<int>? crossAccountUserId,
    pulumi.Output<bool>? disabled,
    required pulumi.Output<String> ossBackupPlanName,
    pulumi.Output<String>? prefix,
    required pulumi.Output<String> retention,
    required pulumi.Output<String> schedule,
    required pulumi.Output<String> vaultId,
  }) :
      backupType = pulumi.Input.asInput<String>(backupType),
      bucket = pulumi.Input.asInput<String>(bucket),
      crossAccountRoleName = pulumi.Input.asOptionalInput<String>(crossAccountRoleName),
      crossAccountType = pulumi.Input.asOptionalInput<String>(crossAccountType),
      crossAccountUserId = pulumi.Input.asOptionalInput<int>(crossAccountUserId),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      ossBackupPlanName = pulumi.Input.asInput<String>(ossBackupPlanName),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      retention = pulumi.Input.asInput<String>(retention),
      schedule = pulumi.Input.asInput<String>(schedule),
      vaultId = pulumi.Input.asInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': backupType,
      'bucket': bucket,
      'crossAccountRoleName': ?crossAccountRoleName,
      'crossAccountType': ?crossAccountType,
      'crossAccountUserId': ?crossAccountUserId,
      'disabled': ?disabled,
      'ossBackupPlanName': ossBackupPlanName,
      'prefix': ?prefix,
      'retention': retention,
      'schedule': schedule,
      'vaultId': vaultId,
    };
  }

  factory OssBackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return OssBackupPlanArgs(
      backupType: pulumi.Output.create<String>(map['backupType'] as String),
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      crossAccountRoleName: map['crossAccountRoleName'] == null ? null : pulumi.Output.create<String>(map['crossAccountRoleName'] as String),
      crossAccountType: map['crossAccountType'] == null ? null : pulumi.Output.create<String>(map['crossAccountType'] as String),
      crossAccountUserId: map['crossAccountUserId'] == null ? null : pulumi.Output.create<int>(map['crossAccountUserId'] as int),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      ossBackupPlanName: pulumi.Output.create<String>(map['ossBackupPlanName'] as String),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<String>(map['prefix'] as String),
      retention: pulumi.Output.create<String>(map['retention'] as String),
      schedule: pulumi.Output.create<String>(map['schedule'] as String),
      vaultId: pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

