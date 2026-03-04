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
  /// &gt; **NOTE:** Note Select at least two values. Separate multiple values with commas (,).
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
  /// &gt; **NOTE:** Note Select at least two values. Separate multiple values with commas (,).
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
  /// &gt; **NOTE:** Note When you create a cluster, the default value of this parameter is 0.
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
    this.backupFrequency,
    this.backupRetentionPeriod,
    this.backupRetentionPolicyOnClusterDeletion,
    this.dataLevel1BackupFrequency,
    this.dataLevel1BackupPeriods,
    this.dataLevel1BackupRetentionPeriod,
    this.dataLevel1BackupTime,
    this.dataLevel2BackupAnotherRegionRegion,
    this.dataLevel2BackupAnotherRegionRetentionPeriod,
    this.dataLevel2BackupPeriods,
    this.dataLevel2BackupRetentionPeriod,
    this.dbClusterId,
    this.enableBackupLog,
    this.logBackupAnotherRegionRegion,
    this.logBackupAnotherRegionRetentionPeriod,
    this.logBackupRetentionPeriod,
    this.preferredBackupPeriods,
    this.preferredBackupTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupFrequency': ?backupFrequency,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'backupRetentionPolicyOnClusterDeletion':
          ?backupRetentionPolicyOnClusterDeletion,
      'dataLevel1BackupFrequency': ?dataLevel1BackupFrequency,
      'dataLevel1BackupPeriods': ?dataLevel1BackupPeriods,
      'dataLevel1BackupRetentionPeriod': ?dataLevel1BackupRetentionPeriod,
      'dataLevel1BackupTime': ?dataLevel1BackupTime,
      'dataLevel2BackupAnotherRegionRegion':
          ?dataLevel2BackupAnotherRegionRegion,
      'dataLevel2BackupAnotherRegionRetentionPeriod':
          ?dataLevel2BackupAnotherRegionRetentionPeriod,
      'dataLevel2BackupPeriods': ?dataLevel2BackupPeriods,
      'dataLevel2BackupRetentionPeriod': ?dataLevel2BackupRetentionPeriod,
      'dbClusterId': ?dbClusterId,
      'enableBackupLog': ?enableBackupLog,
      'logBackupAnotherRegionRegion': ?logBackupAnotherRegionRegion,
      'logBackupAnotherRegionRetentionPeriod':
          ?logBackupAnotherRegionRetentionPeriod,
      'logBackupRetentionPeriod': ?logBackupRetentionPeriod,
      'preferredBackupPeriods': ?preferredBackupPeriods,
      'preferredBackupTime': ?preferredBackupTime,
    };
  }

  factory BackupPolicyState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyState(
      backupFrequency: (() {
        final guardedValue = map['backupFrequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupRetentionPeriod: (() {
        final guardedValue = map['backupRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupRetentionPolicyOnClusterDeletion: (() {
        final guardedValue = map['backupRetentionPolicyOnClusterDeletion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataLevel1BackupFrequency: (() {
        final guardedValue = map['dataLevel1BackupFrequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataLevel1BackupPeriods: (() {
        final guardedValue = map['dataLevel1BackupPeriods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      dataLevel1BackupRetentionPeriod: (() {
        final guardedValue = map['dataLevel1BackupRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dataLevel1BackupTime: (() {
        final guardedValue = map['dataLevel1BackupTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataLevel2BackupAnotherRegionRegion: (() {
        final guardedValue = map['dataLevel2BackupAnotherRegionRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataLevel2BackupAnotherRegionRetentionPeriod: (() {
        final guardedValue =
            map['dataLevel2BackupAnotherRegionRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dataLevel2BackupPeriods: (() {
        final guardedValue = map['dataLevel2BackupPeriods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      dataLevel2BackupRetentionPeriod: (() {
        final guardedValue = map['dataLevel2BackupRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dbClusterId: (() {
        final guardedValue = map['dbClusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableBackupLog: (() {
        final guardedValue = map['enableBackupLog'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      logBackupAnotherRegionRegion: (() {
        final guardedValue = map['logBackupAnotherRegionRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logBackupAnotherRegionRetentionPeriod: (() {
        final guardedValue = map['logBackupAnotherRegionRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      logBackupRetentionPeriod: (() {
        final guardedValue = map['logBackupRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      preferredBackupPeriods: (() {
        final guardedValue = map['preferredBackupPeriods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      preferredBackupTime: (() {
        final guardedValue = map['preferredBackupTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
