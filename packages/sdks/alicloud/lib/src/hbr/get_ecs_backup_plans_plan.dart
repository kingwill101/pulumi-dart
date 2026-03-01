// ignore_for_file: unused_element, unnecessary_cast


class GetEcsBackupPlansPlan {
  /// Backup type. Valid values: `COMPLETE`.
  final String backupType;
  final String createTime;
  /// The creation time of the backup plan. UNIX time in seconds.
  final String createdTime;
  final String detail;
  /// Whether to be suspended. Valid values: `true`, `false`.
  final bool disabled;
  /// The ID of ecs backup plan.
  final String ecsBackupPlanId;
  /// The name of the backup plan.
  final String ecsBackupPlanName;
  /// Exclude path. String of Json list. Up to 255 characters. e.g. `"[\"/home/work\"]"`
  final String exclude;
  /// The ID of ecs backup plan.
  final String id;
  /// Include path. String of Json list. Up to 255 characters. e.g. `"[\"/var\"]"`
  final String include;
  /// The ID of ECS instance.
  final String instanceId;
  /// Windows operating system with application consistency using VSS. eg: {`UseVSS`:false}.
  final String options;
  /// Backup path. e.g. `["/home", "/var"]`
  final List<String> paths;
  /// Backup retention days, the minimum is 1.
  final String retention;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  final String schedule;
  /// The type of backup source.
  final String sourceType;
  /// Flow control. The format is: {start}|{end}|{bandwidth}. Use `|` to separate multiple flow control configurations, multiple flow control configurations not allowed to have overlapping times.
  final String speedLimit;
  /// The update time of the backup plan. UNIX time in seconds.
  final String updatedTime;
  /// The ID of Backup vault.
  final String vaultId;

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
  GetEcsBackupPlansPlan({
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
      backupType: map['backupType'] as String,
      createTime: map['createTime'] as String,
      createdTime: map['createdTime'] as String,
      detail: map['detail'] as String,
      disabled: map['disabled'] as bool,
      ecsBackupPlanId: map['ecsBackupPlanId'] as String,
      ecsBackupPlanName: map['ecsBackupPlanName'] as String,
      exclude: map['exclude'] as String,
      id: map['id'] as String,
      include: map['include'] as String,
      instanceId: map['instanceId'] as String,
      options: map['options'] as String,
      paths: (map['paths'] as List).cast<String>(),
      retention: map['retention'] as String,
      schedule: map['schedule'] as String,
      sourceType: map['sourceType'] as String,
      speedLimit: map['speedLimit'] as String,
      updatedTime: map['updatedTime'] as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

