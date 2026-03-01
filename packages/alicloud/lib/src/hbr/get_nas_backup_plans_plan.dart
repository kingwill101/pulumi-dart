// ignore_for_file: unused_element, unnecessary_cast


class GetNasBackupPlansPlan {
  /// Backup type. Valid values: `COMPLETE`.
  final String backupType;
  /// File System Creation Time. **Note** The time format of the API adopts the ISO 8601 format, such as `2021-07-09T15:45:30CST`.
  final String createTime;
  /// The creation time of the backup plan. UNIX time in seconds.
  final String createdTime;
  /// Whether to be suspended. Valid values: `true`, `false`.
  final bool disabled;
  /// The File System ID of Nas.
  final String fileSystemId;
  /// The ID of Nas backup plan.
  final String id;
  /// The ID of Nas backup plan.
  final String nasBackupPlanId;
  /// The name of the resource.
  final String nasBackupPlanName;
  /// Options field of Nas backup plan.
  final String options;
  /// List of backup path. Up to 65536 Characters. e.g.`["/home", "/var"]`
  final List<String> paths;
  /// Backup retention days, the minimum is 1.
  final String retention;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  final String schedule;
  /// The update time of the backup plan. UNIX time in seconds.
  final String updatedTime;
  /// The ID of backup vault.
  final String vaultId;

  /// Creates a new [GetNasBackupPlansPlan].
  /// [backupType] Backup type. Valid values: `COMPLETE`.
  /// [createTime] File System Creation Time. **Note** The time format of the API adopts the ISO 8601 format, such as `2021-07-09T15:45:30CST`.
  /// [createdTime] The creation time of the backup plan. UNIX time in seconds.
  /// [disabled] Whether to be suspended. Valid values: `true`, `false`.
  /// [fileSystemId] The File System ID of Nas.
  /// [id] The ID of Nas backup plan.
  /// [nasBackupPlanId] The ID of Nas backup plan.
  /// [nasBackupPlanName] The name of the resource.
  /// [options] Options field of Nas backup plan.
  /// [paths] List of backup path. Up to 65536 Characters. e.g.`["/home", "/var"]`
  /// [retention] Backup retention days, the minimum is 1.
  /// [schedule] Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// [updatedTime] The update time of the backup plan. UNIX time in seconds.
  /// [vaultId] The ID of backup vault.
  GetNasBackupPlansPlan({
    required this.backupType,
    required this.createTime,
    required this.createdTime,
    required this.disabled,
    required this.fileSystemId,
    required this.id,
    required this.nasBackupPlanId,
    required this.nasBackupPlanName,
    required this.options,
    required this.paths,
    required this.retention,
    required this.schedule,
    required this.updatedTime,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': backupType,
      'createTime': createTime,
      'createdTime': createdTime,
      'disabled': disabled,
      'fileSystemId': fileSystemId,
      'id': id,
      'nasBackupPlanId': nasBackupPlanId,
      'nasBackupPlanName': nasBackupPlanName,
      'options': options,
      'paths': paths,
      'retention': retention,
      'schedule': schedule,
      'updatedTime': updatedTime,
      'vaultId': vaultId,
    };
  }

  factory GetNasBackupPlansPlan.fromMap(Map<String, dynamic> map) {
    return GetNasBackupPlansPlan(
      backupType: map['backupType'] as String,
      createTime: map['createTime'] as String,
      createdTime: map['createdTime'] as String,
      disabled: map['disabled'] as bool,
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      nasBackupPlanId: map['nasBackupPlanId'] as String,
      nasBackupPlanName: map['nasBackupPlanName'] as String,
      options: map['options'] as String,
      paths: (map['paths'] as List).cast<String>(),
      retention: map['retention'] as String,
      schedule: map['schedule'] as String,
      updatedTime: map['updatedTime'] as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

