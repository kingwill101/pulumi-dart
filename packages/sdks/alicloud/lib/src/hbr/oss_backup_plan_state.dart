// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OssBackupPlan resources.
class OssBackupPlanState {
  /// Backup type. Valid values: `COMPLETE`.
  final pulumi.Input<String>? backupType;
  /// The name of OSS bucket.
  final pulumi.Input<String>? bucket;
  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  final pulumi.Input<String>? crossAccountRoleName;
  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  final pulumi.Input<String>? crossAccountType;
  /// The original account ID of the cross account backup managed by the current account.
  final pulumi.Input<int>? crossAccountUserId;
  /// Whether to disable the backup task. Valid values: `true`, `false`.
  final pulumi.Input<bool>? disabled;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  final pulumi.Input<String>? ossBackupPlanName;
  /// Backup prefix. Once specified, only objects with matching prefixes will be backed up.
  final pulumi.Input<String>? prefix;
  /// Backup retention days, the minimum is 1.
  final pulumi.Input<String>? retention;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  final pulumi.Input<String>? schedule;
  /// The ID of backup vault.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [OssBackupPlanState].
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
  OssBackupPlanState({
    pulumi.Output<String>? backupType,
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? crossAccountRoleName,
    pulumi.Output<String>? crossAccountType,
    pulumi.Output<int>? crossAccountUserId,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? ossBackupPlanName,
    pulumi.Output<String>? prefix,
    pulumi.Output<String>? retention,
    pulumi.Output<String>? schedule,
    pulumi.Output<String>? vaultId,
  }) :
      backupType = pulumi.Input.asOptionalInput<String>(backupType),
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      crossAccountRoleName = pulumi.Input.asOptionalInput<String>(crossAccountRoleName),
      crossAccountType = pulumi.Input.asOptionalInput<String>(crossAccountType),
      crossAccountUserId = pulumi.Input.asOptionalInput<int>(crossAccountUserId),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      ossBackupPlanName = pulumi.Input.asOptionalInput<String>(ossBackupPlanName),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      retention = pulumi.Input.asOptionalInput<String>(retention),
      schedule = pulumi.Input.asOptionalInput<String>(schedule),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': ?backupType,
      'bucket': ?bucket,
      'crossAccountRoleName': ?crossAccountRoleName,
      'crossAccountType': ?crossAccountType,
      'crossAccountUserId': ?crossAccountUserId,
      'disabled': ?disabled,
      'ossBackupPlanName': ?ossBackupPlanName,
      'prefix': ?prefix,
      'retention': ?retention,
      'schedule': ?schedule,
      'vaultId': ?vaultId,
    };
  }

  factory OssBackupPlanState.fromMap(Map<String, dynamic> map) {
    return OssBackupPlanState(
      backupType: map['backupType'] == null ? null : pulumi.Output.create<String>(map['backupType'] as String),
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      crossAccountRoleName: map['crossAccountRoleName'] == null ? null : pulumi.Output.create<String>(map['crossAccountRoleName'] as String),
      crossAccountType: map['crossAccountType'] == null ? null : pulumi.Output.create<String>(map['crossAccountType'] as String),
      crossAccountUserId: map['crossAccountUserId'] == null ? null : pulumi.Output.create<int>(map['crossAccountUserId'] as int),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      ossBackupPlanName: map['ossBackupPlanName'] == null ? null : pulumi.Output.create<String>(map['ossBackupPlanName'] as String),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<String>(map['prefix'] as String),
      retention: map['retention'] == null ? null : pulumi.Output.create<String>(map['retention'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<String>(map['schedule'] as String),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

