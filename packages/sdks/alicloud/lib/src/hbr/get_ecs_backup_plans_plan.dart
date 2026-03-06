// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsBackupPlansPlan {
  /// Backup type. Valid values: `COMPLETE`.
  final pulumi.Input<String> backupType;
  final pulumi.Input<String> createTime;
  /// The creation time of the backup plan. UNIX time in seconds.
  final pulumi.Input<String> createdTime;
  final pulumi.Input<String> detail;
  /// Whether to be suspended. Valid values: `true`, `false`.
  final pulumi.Input<bool> disabled;
  /// The ID of ecs backup plan.
  final pulumi.Input<String> ecsBackupPlanId;
  /// The name of the backup plan.
  final pulumi.Input<String> ecsBackupPlanName;
  /// Exclude path. String of Json list. Up to 255 characters. e.g. `"[\"/home/work\"]"`
  final pulumi.Input<String> exclude;
  /// The ID of ecs backup plan.
  final pulumi.Input<String> id;
  /// Include path. String of Json list. Up to 255 characters. e.g. `"[\"/var\"]"`
  final pulumi.Input<String> include;
  /// The ID of ECS instance.
  final pulumi.Input<String> instanceId;
  /// Windows operating system with application consistency using VSS. eg: {`UseVSS`:false}.
  final pulumi.Input<String> options;
  /// Backup path. e.g. `["/home", "/var"]`
  final pulumi.Input<List<String>> paths;
  /// Backup retention days, the minimum is 1.
  final pulumi.Input<String> retention;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  final pulumi.Input<String> schedule;
  /// The type of backup source.
  final pulumi.Input<String> sourceType;
  /// Flow control. The format is: {start}|{end}|{bandwidth}. Use `|` to separate multiple flow control configurations, multiple flow control configurations not allowed to have overlapping times.
  final pulumi.Input<String> speedLimit;
  /// The update time of the backup plan. UNIX time in seconds.
  final pulumi.Input<String> updatedTime;
  /// The ID of Backup vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [GetEcsBackupPlansPlan].
  /// [backupType] Backup type. Valid values: `COMPLETE`.
  /// [createTime] Required.
  /// [createdTime] The creation time of the backup plan. UNIX time in seconds.
  /// [detail] Required.
  /// [disabled] Whether to be suspended. Valid values: `true`, `false`.
  /// [ecsBackupPlanId] The ID of ecs backup plan.
  /// [ecsBackupPlanName] The name of the backup plan.
  /// [exclude] Exclude path. String of Json list. Up to 255 characters. e.g. `"[\"/home/work\"]"`
  /// [id] The ID of ecs backup plan.
  /// [include] Include path. String of Json list. Up to 255 characters. e.g. `"[\"/var\"]"`
  /// [instanceId] The ID of ECS instance.
  /// [options] Windows operating system with application consistency using VSS. eg: {`UseVSS`:false}.
  /// [paths] Backup path. e.g. `["/home", "/var"]`
  /// [retention] Backup retention days, the minimum is 1.
  /// [schedule] Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// [sourceType] The type of backup source.
  /// [speedLimit] Flow control. The format is: {start}|{end}|{bandwidth}. Use `|` to separate multiple flow control configurations, multiple flow control configurations not allowed to have overlapping times.
  /// [updatedTime] The update time of the backup plan. UNIX time in seconds.
  /// [vaultId] The ID of Backup vault.
  const GetEcsBackupPlansPlan({
    required this.backupType,
    required this.createTime,
    required this.createdTime,
    required this.detail,
    required this.disabled,
    required this.ecsBackupPlanId,
    required this.ecsBackupPlanName,
    required this.exclude,
    required this.id,
    required this.include,
    required this.instanceId,
    required this.options,
    required this.paths,
    required this.retention,
    required this.schedule,
    required this.sourceType,
    required this.speedLimit,
    required this.updatedTime,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': backupType,
      'createTime': createTime,
      'createdTime': createdTime,
      'detail': detail,
      'disabled': disabled,
      'ecsBackupPlanId': ecsBackupPlanId,
      'ecsBackupPlanName': ecsBackupPlanName,
      'exclude': exclude,
      'id': id,
      'include': include,
      'instanceId': instanceId,
      'options': options,
      'paths': paths,
      'retention': retention,
      'schedule': schedule,
      'sourceType': sourceType,
      'speedLimit': speedLimit,
      'updatedTime': updatedTime,
      'vaultId': vaultId,
    };
  }

  factory GetEcsBackupPlansPlan.fromMap(Map<String, dynamic> map) {
    return GetEcsBackupPlansPlan(
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      detail: pulumi.Input.fromValue(map['detail'] as String),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      ecsBackupPlanId: pulumi.Input.fromValue(map['ecsBackupPlanId'] as String),
      ecsBackupPlanName: pulumi.Input.fromValue(map['ecsBackupPlanName'] as String),
      exclude: pulumi.Input.fromValue(map['exclude'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      include: pulumi.Input.fromValue(map['include'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      options: pulumi.Input.fromValue(map['options'] as String),
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      retention: pulumi.Input.fromValue(map['retention'] as String),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      speedLimit: pulumi.Input.fromValue(map['speedLimit'] as String),
      updatedTime: pulumi.Input.fromValue(map['updatedTime'] as String),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}

