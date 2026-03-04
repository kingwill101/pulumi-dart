// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_ecs_backup_plan_ecs_backup_plan_args_doc}
/// The set of arguments for EcsBackupPlan.
/// {@endtemplate}
/// {@macro pulumi_hbr_ecs_backup_plan_ecs_backup_plan_args_doc}
class EcsBackupPlanArgs {
  /// Backup type. Valid values: `COMPLETE`.
  final pulumi.Input<String> backupType;

  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  final pulumi.Input<String>? crossAccountRoleName;

  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  final pulumi.Input<String>? crossAccountType;

  /// The original account ID of the cross account backup managed by the current account.
  final pulumi.Input<int>? crossAccountUserId;

  /// The detail of the backup plan.
  final pulumi.Input<String>? detail;

  /// Whether to disable the backup task. Valid values: `true`, `false`.
  final pulumi.Input<bool>? disabled;

  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  final pulumi.Input<String> ecsBackupPlanName;

  /// Exclude path. String of Json list, up to 255 characters. e.g. `"[\"/home/work\"]"`
  final pulumi.Input<String>? exclude;

  /// Include path. String of Json list, up to 255 characters. e.g. `"[\"/var\"]"`
  final pulumi.Input<String>? include;

  /// The ID of ECS instance. The ecs backup client must have been installed on the host.
  final pulumi.Input<String> instanceId;

  /// Windows operating system with application consistency using VSS, e.g: `{\"UseVSS\":false}`.
  final pulumi.Input<String>? options;

  /// List of backup path. e.g. `["/home", "/var"]`. **Note** If `path` is empty, it means that all directories will be backed up.
  final pulumi.Input<List<String>>? paths;

  /// Backup retention days, the minimum is 1.
  final pulumi.Input<String> retention;

  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  final pulumi.Input<String> schedule;

  /// Flow control. The format is: `{start}|{end}|{bandwidth}`. Use `|` to separate multiple flow control configurations, multiple flow control configurations not allowed to have overlapping times.
  final pulumi.Input<String>? speedLimit;

  /// Attribute update_paths has been deprecated in v1.139.0+, and you do not need to set it anymore.
  final pulumi.Input<bool>? updatePaths;

  /// The ID of Backup vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [EcsBackupPlanArgs].
  /// [backupType] Backup type. Valid values: `COMPLETE`.
  /// [crossAccountRoleName] The role name created in the original account RAM backup by the cross account managed by the current account.
  /// [crossAccountType] The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  /// [crossAccountUserId] The original account ID of the cross account backup managed by the current account.
  /// [detail] The detail of the backup plan.
  /// [disabled] Whether to disable the backup task. Valid values: `true`, `false`.
  /// [ecsBackupPlanName] The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  /// [exclude] Exclude path. String of Json list, up to 255 characters. e.g. `"[\"/home/work\"]"`
  /// [include] Include path. String of Json list, up to 255 characters. e.g. `"[\"/var\"]"`
  /// [instanceId] The ID of ECS instance. The ecs backup client must have been installed on the host.
  /// [options] Windows operating system with application consistency using VSS, e.g: `{\"UseVSS\":false}`.
  /// [paths] List of backup path. e.g. `["/home", "/var"]`. **Note** If `path` is empty, it means that all directories will be backed up.
  /// [retention] Backup retention days, the minimum is 1.
  /// [schedule] Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// [speedLimit] Flow control. The format is: `{start}|{end}|{bandwidth}`. Use `|` to separate multiple flow control configurations, multiple flow control configurations not allowed to have overlapping times.
  /// [updatePaths] Attribute update_paths has been deprecated in v1.139.0+, and you do not need to set it anymore.
  /// [vaultId] The ID of Backup vault.
  EcsBackupPlanArgs({
    required this.backupType,
    this.crossAccountRoleName,
    this.crossAccountType,
    this.crossAccountUserId,
    this.detail,
    this.disabled,
    required this.ecsBackupPlanName,
    this.exclude,
    this.include,
    required this.instanceId,
    this.options,
    this.paths,
    required this.retention,
    required this.schedule,
    this.speedLimit,
    this.updatePaths,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': backupType,
      'crossAccountRoleName': ?crossAccountRoleName,
      'crossAccountType': ?crossAccountType,
      'crossAccountUserId': ?crossAccountUserId,
      'detail': ?detail,
      'disabled': ?disabled,
      'ecsBackupPlanName': ecsBackupPlanName,
      'exclude': ?exclude,
      'include': ?include,
      'instanceId': instanceId,
      'options': ?options,
      'paths': ?paths,
      'retention': retention,
      'schedule': schedule,
      'speedLimit': ?speedLimit,
      'updatePaths': ?updatePaths,
      'vaultId': vaultId,
    };
  }

  factory EcsBackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return EcsBackupPlanArgs(
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      crossAccountRoleName: (() {
        final guardedValue = map['crossAccountRoleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      crossAccountType: (() {
        final guardedValue = map['crossAccountType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      crossAccountUserId: (() {
        final guardedValue = map['crossAccountUserId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      detail: (() {
        final guardedValue = map['detail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ecsBackupPlanName: pulumi.Input.fromValue(
        map['ecsBackupPlanName'] as String,
      ),
      exclude: (() {
        final guardedValue = map['exclude'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      include: (() {
        final guardedValue = map['include'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      options: (() {
        final guardedValue = map['options'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paths: (() {
        final guardedValue = map['paths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      retention: pulumi.Input.fromValue(map['retention'] as String),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      speedLimit: (() {
        final guardedValue = map['speedLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updatePaths: (() {
        final guardedValue = map['updatePaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}
