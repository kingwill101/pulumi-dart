// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupPolicy resources.
class BackupPolicyState {
  /// The backup frequency. Valid values are `Normal`, `2/24H`, `3/24H`, `4/24H`.Default to `Normal`.
  final pulumi.Input<String>? backupFrequency;
  /// Cluster backup retention days, Fixed for 7 days, not modified.
  final pulumi.Input<String>? backupRetentionPeriod;
  /// Specifies whether to retain backups when you delete a cluster. Valid values are `ALL`, `LATEST`, `NONE`. Default to `NONE`. Value options can refer to the latest docs [ModifyBackupPolicy](https://www.alibabacloud.com/help/en/polardb/latest/modifybackuppolicy)
  final pulumi.Input<String>? backupRetentionPolicyOnClusterDeletion;
  /// The Id of cluster that can run database.The backup frequency. Valid values are `Normal`, `2/24H`, `3/24H`, `4/24H`.Default to `Normal`.
  final pulumi.Input<String>? dataLevel1BackupFrequency;
  /// PolarDB Cluster of level-1 backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].
  /// > **NOTE:** Note Select at least two values. Separate multiple values with commas (,).
  final pulumi.Input<List<String>>? dataLevel1BackupPeriods;
  /// The retention period of level-1 backups. Valid values: 3 to 14. Unit: days.
  final pulumi.Input<int>? dataLevel1BackupRetentionPeriod;
  /// The time period during which automatic backup is performed. The format is HH: MMZ HH: MMZ (UTC time), and the entered value must be an hour apart, such as 14:00z-15:00z.
  final pulumi.Input<String>? dataLevel1BackupTime;
  /// PolarDB Cluster of level-2 backup is a cross regional backup area.
  final pulumi.Input<String>? dataLevel2BackupAnotherRegionRegion;
  /// PolarDB Cluster of level-2 backup cross region backup retention period. Valid values are `0`, `30 to 7300`, `-1`. Default to `0`.
  final pulumi.Input<int>? dataLevel2BackupAnotherRegionRetentionPeriod;
  /// PolarDB Cluster of level-2 backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].
  /// > **NOTE:** Note Select at least two values. Separate multiple values with commas (,).
  final pulumi.Input<List<String>>? dataLevel2BackupPeriods;
  /// The retention period of level-2 backups. Valid values are `0`, `30 to 7300`, `-1`. Default to `0`.
  final pulumi.Input<int>? dataLevel2BackupRetentionPeriod;
  /// The Id of cluster that can run database.
  final pulumi.Input<String>? dbClusterId;
  /// Indicates whether the log backup feature was enabled. Valid values are `0`, `1`. `1` By default, the log backup feature is enabled and cannot be disabled.
  final pulumi.Input<int>? enableBackupLog;
  /// The region in which you want to store cross-region log backups. For information about regions that support the cross-region backup feature, see [Overview.](https://www.alibabacloud.com/help/en/polardb/latest/backup-and-restoration-overview)
  final pulumi.Input<String>? logBackupAnotherRegionRegion;
  /// The retention period of cross-region log backups. Default value: OFF. Valid values are `0`, `30 to 7300`, `-1`.
  /// > **NOTE:** Note When you create a cluster, the default value of this parameter is 0.
  final pulumi.Input<int>? logBackupAnotherRegionRetentionPeriod;
  /// The retention period of the log backups. Valid values are `3 to 7300`, `-1`.
  final pulumi.Input<int>? logBackupRetentionPeriod;
  /// PolarDB Cluster backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]. Default to ["Tuesday", "Thursday", "Saturday"].
  final pulumi.Input<List<String>>? preferredBackupPeriods;
  /// PolarDB Cluster backup time, in the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. Default to "02:00Z-03:00Z". China time is 8 hours behind it.
  final pulumi.Input<String>? preferredBackupTime;

  /// Creates a new [BackupPolicyState].
  /// [backupFrequency] The backup frequency. Valid values are `Normal`, `2/24H`, `3/24H`, `4/24H`.Default to `Normal`.
  /// [backupRetentionPeriod] Cluster backup retention days, Fixed for 7 days, not modified.
  /// [backupRetentionPolicyOnClusterDeletion] Specifies whether to retain backups when you delete a cluster. Valid values are `ALL`, `LATEST`, `NONE`. Default to `NONE`. Value options can refer to the latest docs [ModifyBackupPolicy](https://www.alibabacloud.com/help/en/polardb/latest/modifybackuppolicy)
  /// [dataLevel1BackupFrequency] The Id of cluster that can run database.The backup frequency. Valid values are `Normal`, `2/24H`, `3/24H`, `4/24H`.Default to `Normal`.
  /// [dataLevel1BackupPeriods] PolarDB Cluster of level-1 backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].
  /// [dataLevel1BackupRetentionPeriod] The retention period of level-1 backups. Valid values: 3 to 14. Unit: days.
  /// [dataLevel1BackupTime] The time period during which automatic backup is performed. The format is HH: MMZ HH: MMZ (UTC time), and the entered value must be an hour apart, such as 14:00z-15:00z.
  /// [dataLevel2BackupAnotherRegionRegion] PolarDB Cluster of level-2 backup is a cross regional backup area.
  /// [dataLevel2BackupAnotherRegionRetentionPeriod] PolarDB Cluster of level-2 backup cross region backup retention period. Valid values are `0`, `30 to 7300`, `-1`. Default to `0`.
  /// [dataLevel2BackupPeriods] PolarDB Cluster of level-2 backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].
  /// [dataLevel2BackupRetentionPeriod] The retention period of level-2 backups. Valid values are `0`, `30 to 7300`, `-1`. Default to `0`.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [enableBackupLog] Indicates whether the log backup feature was enabled. Valid values are `0`, `1`. `1` By default, the log backup feature is enabled and cannot be disabled.
  /// [logBackupAnotherRegionRegion] The region in which you want to store cross-region log backups. For information about regions that support the cross-region backup feature, see [Overview.](https://www.alibabacloud.com/help/en/polardb/latest/backup-and-restoration-overview)
  /// [logBackupAnotherRegionRetentionPeriod] The retention period of cross-region log backups. Default value: OFF. Valid values are `0`, `30 to 7300`, `-1`.
  /// [logBackupRetentionPeriod] The retention period of the log backups. Valid values are `3 to 7300`, `-1`.
  /// [preferredBackupPeriods] PolarDB Cluster backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]. Default to ["Tuesday", "Thursday", "Saturday"].
  /// [preferredBackupTime] PolarDB Cluster backup time, in the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. Default to "02:00Z-03:00Z". China time is 8 hours behind it.
  BackupPolicyState({
    pulumi.Output<String>? backupFrequency,
    pulumi.Output<String>? backupRetentionPeriod,
    pulumi.Output<String>? backupRetentionPolicyOnClusterDeletion,
    pulumi.Output<String>? dataLevel1BackupFrequency,
    pulumi.Output<List<String>>? dataLevel1BackupPeriods,
    pulumi.Output<int>? dataLevel1BackupRetentionPeriod,
    pulumi.Output<String>? dataLevel1BackupTime,
    pulumi.Output<String>? dataLevel2BackupAnotherRegionRegion,
    pulumi.Output<int>? dataLevel2BackupAnotherRegionRetentionPeriod,
    pulumi.Output<List<String>>? dataLevel2BackupPeriods,
    pulumi.Output<int>? dataLevel2BackupRetentionPeriod,
    pulumi.Output<String>? dbClusterId,
    pulumi.Output<int>? enableBackupLog,
    pulumi.Output<String>? logBackupAnotherRegionRegion,
    pulumi.Output<int>? logBackupAnotherRegionRetentionPeriod,
    pulumi.Output<int>? logBackupRetentionPeriod,
    pulumi.Output<List<String>>? preferredBackupPeriods,
    pulumi.Output<String>? preferredBackupTime,
  }) :
      backupFrequency = pulumi.Input.asOptionalInput<String>(backupFrequency),
      backupRetentionPeriod = pulumi.Input.asOptionalInput<String>(backupRetentionPeriod),
      backupRetentionPolicyOnClusterDeletion = pulumi.Input.asOptionalInput<String>(backupRetentionPolicyOnClusterDeletion),
      dataLevel1BackupFrequency = pulumi.Input.asOptionalInput<String>(dataLevel1BackupFrequency),
      dataLevel1BackupPeriods = pulumi.Input.asOptionalInput<List<String>>(dataLevel1BackupPeriods),
      dataLevel1BackupRetentionPeriod = pulumi.Input.asOptionalInput<int>(dataLevel1BackupRetentionPeriod),
      dataLevel1BackupTime = pulumi.Input.asOptionalInput<String>(dataLevel1BackupTime),
      dataLevel2BackupAnotherRegionRegion = pulumi.Input.asOptionalInput<String>(dataLevel2BackupAnotherRegionRegion),
      dataLevel2BackupAnotherRegionRetentionPeriod = pulumi.Input.asOptionalInput<int>(dataLevel2BackupAnotherRegionRetentionPeriod),
      dataLevel2BackupPeriods = pulumi.Input.asOptionalInput<List<String>>(dataLevel2BackupPeriods),
      dataLevel2BackupRetentionPeriod = pulumi.Input.asOptionalInput<int>(dataLevel2BackupRetentionPeriod),
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      enableBackupLog = pulumi.Input.asOptionalInput<int>(enableBackupLog),
      logBackupAnotherRegionRegion = pulumi.Input.asOptionalInput<String>(logBackupAnotherRegionRegion),
      logBackupAnotherRegionRetentionPeriod = pulumi.Input.asOptionalInput<int>(logBackupAnotherRegionRetentionPeriod),
      logBackupRetentionPeriod = pulumi.Input.asOptionalInput<int>(logBackupRetentionPeriod),
      preferredBackupPeriods = pulumi.Input.asOptionalInput<List<String>>(preferredBackupPeriods),
      preferredBackupTime = pulumi.Input.asOptionalInput<String>(preferredBackupTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupFrequency': ?backupFrequency,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'backupRetentionPolicyOnClusterDeletion': ?backupRetentionPolicyOnClusterDeletion,
      'dataLevel1BackupFrequency': ?dataLevel1BackupFrequency,
      'dataLevel1BackupPeriods': ?dataLevel1BackupPeriods,
      'dataLevel1BackupRetentionPeriod': ?dataLevel1BackupRetentionPeriod,
      'dataLevel1BackupTime': ?dataLevel1BackupTime,
      'dataLevel2BackupAnotherRegionRegion': ?dataLevel2BackupAnotherRegionRegion,
      'dataLevel2BackupAnotherRegionRetentionPeriod': ?dataLevel2BackupAnotherRegionRetentionPeriod,
      'dataLevel2BackupPeriods': ?dataLevel2BackupPeriods,
      'dataLevel2BackupRetentionPeriod': ?dataLevel2BackupRetentionPeriod,
      'dbClusterId': ?dbClusterId,
      'enableBackupLog': ?enableBackupLog,
      'logBackupAnotherRegionRegion': ?logBackupAnotherRegionRegion,
      'logBackupAnotherRegionRetentionPeriod': ?logBackupAnotherRegionRetentionPeriod,
      'logBackupRetentionPeriod': ?logBackupRetentionPeriod,
      'preferredBackupPeriods': ?preferredBackupPeriods,
      'preferredBackupTime': ?preferredBackupTime,
    };
  }

  factory BackupPolicyState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyState(
      backupFrequency: map['backupFrequency'] == null ? null : pulumi.Output.create<String>(map['backupFrequency'] as String),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : pulumi.Output.create<String>(map['backupRetentionPeriod'] as String),
      backupRetentionPolicyOnClusterDeletion: map['backupRetentionPolicyOnClusterDeletion'] == null ? null : pulumi.Output.create<String>(map['backupRetentionPolicyOnClusterDeletion'] as String),
      dataLevel1BackupFrequency: map['dataLevel1BackupFrequency'] == null ? null : pulumi.Output.create<String>(map['dataLevel1BackupFrequency'] as String),
      dataLevel1BackupPeriods: map['dataLevel1BackupPeriods'] == null ? null : pulumi.Output.create<List<String>>((map['dataLevel1BackupPeriods'] as List).cast<String>()),
      dataLevel1BackupRetentionPeriod: map['dataLevel1BackupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['dataLevel1BackupRetentionPeriod'] as int),
      dataLevel1BackupTime: map['dataLevel1BackupTime'] == null ? null : pulumi.Output.create<String>(map['dataLevel1BackupTime'] as String),
      dataLevel2BackupAnotherRegionRegion: map['dataLevel2BackupAnotherRegionRegion'] == null ? null : pulumi.Output.create<String>(map['dataLevel2BackupAnotherRegionRegion'] as String),
      dataLevel2BackupAnotherRegionRetentionPeriod: map['dataLevel2BackupAnotherRegionRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['dataLevel2BackupAnotherRegionRetentionPeriod'] as int),
      dataLevel2BackupPeriods: map['dataLevel2BackupPeriods'] == null ? null : pulumi.Output.create<List<String>>((map['dataLevel2BackupPeriods'] as List).cast<String>()),
      dataLevel2BackupRetentionPeriod: map['dataLevel2BackupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['dataLevel2BackupRetentionPeriod'] as int),
      dbClusterId: map['dbClusterId'] == null ? null : pulumi.Output.create<String>(map['dbClusterId'] as String),
      enableBackupLog: map['enableBackupLog'] == null ? null : pulumi.Output.create<int>(map['enableBackupLog'] as int),
      logBackupAnotherRegionRegion: map['logBackupAnotherRegionRegion'] == null ? null : pulumi.Output.create<String>(map['logBackupAnotherRegionRegion'] as String),
      logBackupAnotherRegionRetentionPeriod: map['logBackupAnotherRegionRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['logBackupAnotherRegionRetentionPeriod'] as int),
      logBackupRetentionPeriod: map['logBackupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['logBackupRetentionPeriod'] as int),
      preferredBackupPeriods: map['preferredBackupPeriods'] == null ? null : pulumi.Output.create<List<String>>((map['preferredBackupPeriods'] as List).cast<String>()),
      preferredBackupTime: map['preferredBackupTime'] == null ? null : pulumi.Output.create<String>(map['preferredBackupTime'] as String),
    );
  }
}

