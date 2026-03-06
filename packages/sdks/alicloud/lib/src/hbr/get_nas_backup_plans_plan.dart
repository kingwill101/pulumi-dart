// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNasBackupPlansPlan {
  /// Backup type. Valid values: `COMPLETE`.
  final pulumi.Input<String> backupType;
  /// File System Creation Time. **Note** The time format of the API adopts the ISO 8601 format, such as `2021-07-09T15:45:30CST`.
  final pulumi.Input<String> createTime;
  /// The creation time of the backup plan. UNIX time in seconds.
  final pulumi.Input<String> createdTime;
  /// Whether to be suspended. Valid values: `true`, `false`.
  final pulumi.Input<bool> disabled;
  /// The File System ID of Nas.
  final pulumi.Input<String> fileSystemId;
  /// The ID of Nas backup plan.
  final pulumi.Input<String> id;
  /// The ID of Nas backup plan.
  final pulumi.Input<String> nasBackupPlanId;
  /// The name of the resource.
  final pulumi.Input<String> nasBackupPlanName;
  /// Options field of Nas backup plan.
  final pulumi.Input<String> options;
  /// List of backup path. Up to 65536 Characters. e.g.`["/home", "/var"]`
  final pulumi.Input<List<String>> paths;
  /// Backup retention days, the minimum is 1.
  final pulumi.Input<String> retention;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  final pulumi.Input<String> schedule;
  /// The update time of the backup plan. UNIX time in seconds.
  final pulumi.Input<String> updatedTime;
  /// The ID of backup vault.
  final pulumi.Input<String> vaultId;

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
  const GetNasBackupPlansPlan({
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
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      nasBackupPlanId: pulumi.Input.fromValue(map['nasBackupPlanId'] as String),
      nasBackupPlanName: pulumi.Input.fromValue(map['nasBackupPlanName'] as String),
      options: pulumi.Input.fromValue(map['options'] as String),
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      retention: pulumi.Input.fromValue(map['retention'] as String),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      updatedTime: pulumi.Input.fromValue(map['updatedTime'] as String),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}

