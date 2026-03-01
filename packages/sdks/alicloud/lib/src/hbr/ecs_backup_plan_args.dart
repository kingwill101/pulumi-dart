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
    required pulumi.Output<String> backupType,
    pulumi.Output<String>? crossAccountRoleName,
    pulumi.Output<String>? crossAccountType,
    pulumi.Output<int>? crossAccountUserId,
    pulumi.Output<String>? detail,
    pulumi.Output<bool>? disabled,
    required pulumi.Output<String> ecsBackupPlanName,
    pulumi.Output<String>? exclude,
    pulumi.Output<String>? include,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? options,
    pulumi.Output<List<String>>? paths,
    required pulumi.Output<String> retention,
    required pulumi.Output<String> schedule,
    pulumi.Output<String>? speedLimit,
    pulumi.Output<bool>? updatePaths,
    required pulumi.Output<String> vaultId,
  }) :
      backupType = pulumi.Input.asInput<String>(backupType),
      crossAccountRoleName = pulumi.Input.asOptionalInput<String>(crossAccountRoleName),
      crossAccountType = pulumi.Input.asOptionalInput<String>(crossAccountType),
      crossAccountUserId = pulumi.Input.asOptionalInput<int>(crossAccountUserId),
      detail = pulumi.Input.asOptionalInput<String>(detail),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      ecsBackupPlanName = pulumi.Input.asInput<String>(ecsBackupPlanName),
      exclude = pulumi.Input.asOptionalInput<String>(exclude),
      include = pulumi.Input.asOptionalInput<String>(include),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      options = pulumi.Input.asOptionalInput<String>(options),
      paths = pulumi.Input.asOptionalInput<List<String>>(paths),
      retention = pulumi.Input.asInput<String>(retention),
      schedule = pulumi.Input.asInput<String>(schedule),
      speedLimit = pulumi.Input.asOptionalInput<String>(speedLimit),
      updatePaths = pulumi.Input.asOptionalInput<bool>(updatePaths),
      vaultId = pulumi.Input.asInput<String>(vaultId);

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
      backupType: pulumi.Output.create<String>(map['backupType'] as String),
      crossAccountRoleName: map['crossAccountRoleName'] == null ? null : pulumi.Output.create<String>(map['crossAccountRoleName'] as String),
      crossAccountType: map['crossAccountType'] == null ? null : pulumi.Output.create<String>(map['crossAccountType'] as String),
      crossAccountUserId: map['crossAccountUserId'] == null ? null : pulumi.Output.create<int>(map['crossAccountUserId'] as int),
      detail: map['detail'] == null ? null : pulumi.Output.create<String>(map['detail'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      ecsBackupPlanName: pulumi.Output.create<String>(map['ecsBackupPlanName'] as String),
      exclude: map['exclude'] == null ? null : pulumi.Output.create<String>(map['exclude'] as String),
      include: map['include'] == null ? null : pulumi.Output.create<String>(map['include'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      options: map['options'] == null ? null : pulumi.Output.create<String>(map['options'] as String),
      paths: map['paths'] == null ? null : pulumi.Output.create<List<String>>((map['paths'] as List).cast<String>()),
      retention: pulumi.Output.create<String>(map['retention'] as String),
      schedule: pulumi.Output.create<String>(map['schedule'] as String),
      speedLimit: map['speedLimit'] == null ? null : pulumi.Output.create<String>(map['speedLimit'] as String),
      updatePaths: map['updatePaths'] == null ? null : pulumi.Output.create<bool>(map['updatePaths'] as bool),
      vaultId: pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

