// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_nas_backup_plan_nas_backup_plan_args_doc}
/// The set of arguments for NasBackupPlan.
/// {@endtemplate}
/// {@macro pulumi_hbr_nas_backup_plan_nas_backup_plan_args_doc}
class NasBackupPlanArgs {
  /// Backup type. Valid values: `COMPLETE`.
  final pulumi.Input<String> backupType;
  /// This field has been deprecated from provider version 1.153.0+. The creation time of NAS file system. **Note** The time format of the API adopts the ISO 8601, such as `2021-07-09T15:45:30CST` or `2021-07-09T07:45:30Z`.
  final pulumi.Input<String>? createTime;
  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  ///
  /// > **Note** `alicloud.hbr.NasBackupPlan` depends on the `alicloud.nas.FileSystem` and creates a mount point on the file system. If this dependency has not declared, the file system may not be deleted correctly.
  final pulumi.Input<String>? crossAccountRoleName;
  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  final pulumi.Input<String>? crossAccountType;
  /// The original account ID of the cross account backup managed by the current account.
  final pulumi.Input<int>? crossAccountUserId;
  /// Whether to disable the backup task. Valid values: `true`, `false`.
  final pulumi.Input<bool>? disabled;
  /// The File System ID of Nas.
  final pulumi.Input<String> fileSystemId;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  final pulumi.Input<String> nasBackupPlanName;
  /// This parameter specifies whether to use Windows VSS to define a backup path.
  final pulumi.Input<String>? options;
  /// List of backup path. Up to 65536 characters. e.g.`["/home", "/var"]`. **Note** You should at least specify a backup path, empty array not allowed here.
  final pulumi.Input<List<String>> paths;
  /// Backup retention days, the minimum is 1.
  final pulumi.Input<String> retention;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  final pulumi.Input<String> schedule;
  /// The ID of Backup vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [NasBackupPlanArgs].
  /// [backupType] Backup type. Valid values: `COMPLETE`.
  /// [createTime] This field has been deprecated from provider version 1.153.0+. The creation time of NAS file system. **Note** The time format of the API adopts the ISO 8601, such as `2021-07-09T15:45:30CST` or `2021-07-09T07:45:30Z`.
  /// [crossAccountRoleName] The role name created in the original account RAM backup by the cross account managed by the current account.
  /// [crossAccountType] The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  /// [crossAccountUserId] The original account ID of the cross account backup managed by the current account.
  /// [disabled] Whether to disable the backup task. Valid values: `true`, `false`.
  /// [fileSystemId] The File System ID of Nas.
  /// [nasBackupPlanName] The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  /// [options] This parameter specifies whether to use Windows VSS to define a backup path.
  /// [paths] List of backup path. Up to 65536 characters. e.g.`["/home", "/var"]`. **Note** You should at least specify a backup path, empty array not allowed here.
  /// [retention] Backup retention days, the minimum is 1.
  /// [schedule] Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// [vaultId] The ID of Backup vault.
  NasBackupPlanArgs({
    required String backupType,
    String? createTime,
    String? crossAccountRoleName,
    String? crossAccountType,
    int? crossAccountUserId,
    bool? disabled,
    required String fileSystemId,
    required String nasBackupPlanName,
    String? options,
    required List<String> paths,
    required String retention,
    required String schedule,
    required String vaultId,
  }) :
      backupType = pulumi.Input.asInput<String>(backupType),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      crossAccountRoleName = pulumi.Input.asOptionalInput<String>(crossAccountRoleName),
      crossAccountType = pulumi.Input.asOptionalInput<String>(crossAccountType),
      crossAccountUserId = pulumi.Input.asOptionalInput<int>(crossAccountUserId),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
      nasBackupPlanName = pulumi.Input.asInput<String>(nasBackupPlanName),
      options = pulumi.Input.asOptionalInput<String>(options),
      paths = pulumi.Input.asInput<List<String>>(paths),
      retention = pulumi.Input.asInput<String>(retention),
      schedule = pulumi.Input.asInput<String>(schedule),
      vaultId = pulumi.Input.asInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': backupType,
      'createTime': ?createTime,
      'crossAccountRoleName': ?crossAccountRoleName,
      'crossAccountType': ?crossAccountType,
      'crossAccountUserId': ?crossAccountUserId,
      'disabled': ?disabled,
      'fileSystemId': fileSystemId,
      'nasBackupPlanName': nasBackupPlanName,
      'options': ?options,
      'paths': paths,
      'retention': retention,
      'schedule': schedule,
      'vaultId': vaultId,
    };
  }

  factory NasBackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return NasBackupPlanArgs(
      backupType: map['backupType'] as String,
      createTime: map['createTime'] == null ? null : map['createTime'] as String,
      crossAccountRoleName: map['crossAccountRoleName'] == null ? null : map['crossAccountRoleName'] as String,
      crossAccountType: map['crossAccountType'] == null ? null : map['crossAccountType'] as String,
      crossAccountUserId: map['crossAccountUserId'] == null ? null : map['crossAccountUserId'] as int,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      fileSystemId: map['fileSystemId'] as String,
      nasBackupPlanName: map['nasBackupPlanName'] as String,
      options: map['options'] == null ? null : map['options'] as String,
      paths: (map['paths'] as List).cast<String>(),
      retention: map['retention'] as String,
      schedule: map['schedule'] as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

