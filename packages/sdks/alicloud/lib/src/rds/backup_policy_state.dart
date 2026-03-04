// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupPolicy resources.
class BackupPolicyState {
  /// Instance archive backup keep count. Valid when the `enable_backup_log` is `true` and instance is mysql local disk. When `archive_backup_keep_policy` is `ByMonth` Valid values: [1-31]. When `archive_backup_keep_policy` is `ByWeek` Valid values: [1-7].
  final pulumi.Input<int>? archiveBackupKeepCount;

  /// Instance archive backup keep policy. Valid when the `enable_backup_log` is `true` and instance is mysql local disk. Valid values are `ByMonth`, `ByWeek`, `KeepAll`.
  final pulumi.Input<String>? archiveBackupKeepPolicy;

  /// Instance archive backup retention days. Valid when the `enable_backup_log` is `true` and instance is mysql local disk. Valid values: [30-1095], and `archive_backup_retention_period` must larger than `backup_retention_period` 730.
  final pulumi.Input<int>? archiveBackupRetentionPeriod;

  /// The frequency at which you want to perform a snapshot backup on the instance. Valid values:
  /// - -1: No backup frequencies are specified.
  /// - 30: A snapshot backup is performed once every 30 minutes.
  /// - 60: A snapshot backup is performed once every 60 minutes.
  /// - 120: A snapshot backup is performed once every 120 minutes.
  /// - 240: A snapshot backup is performed once every 240 minutes.
  /// - 360: A snapshot backup is performed once every 360 minutes.
  /// - 480: A snapshot backup is performed once every 480 minutes.
  /// - 720: A snapshot backup is performed once every 720 minutes.
  final pulumi.Input<String>? backupInterval;

  /// The backup method of the instance. Valid values:
  /// - Physical: physical backup
  /// - Snapshot: snapshot backup
  /// -&gt;**NOTE:** This parameter takes effect only on instances that run SQL Server with cloud disks. This parameter takes effect only when BackupPolicyMode is set to DataBackupPolicy.
  ///
  /// &gt; **NOTE:** Currently, the SQLServer instance does not support to modify `log_backup_retention_period`.
  final pulumi.Input<String>? backupMethod;

  /// It has been deprecated from version 1.69.0, and use field 'preferred_backup_period' instead.
  final pulumi.Input<List<String>>? backupPeriods;

  /// Specifies whether the backup settings of a secondary instance are configured. Valid values:
  /// - 1: secondary instance preferred
  /// - 2: primary instance preferred
  /// -&gt;**NOTE:** This parameter is suitable only for instances that run SQL Server on RDS Cluster Edition. This parameter takes effect only when BackupMethod is set to Physical. If BackupMethod is set to Snapshot, backups are forcefully performed on the primary instance that runs SQL Server on RDS Cluster Edition.
  final pulumi.Input<int>? backupPriority;

  /// Instance backup retention days. Valid values: [7-730]. Default to 7. But mysql local disk is unlimited.
  final pulumi.Input<int>? backupRetentionPeriod;

  /// It has been deprecated from version 1.69.0, and use field 'preferred_backup_time' instead.
  final pulumi.Input<String>? backupTime;

  /// Whether to enable second level backup.Valid values are `Flash`, `Standard`, Note:It only takes effect when the BackupPolicyMode parameter is DataBackupPolicy.
  /// &gt; **NOTE:** You can configure a backup policy by using this parameter and the PreferredBackupPeriod parameter. For example, if you set the PreferredBackupPeriod parameter to Saturday,Sunday and the BackupInterval parameter to -1, a snapshot backup is performed on every Saturday and Sunday.If the instance runs PostgreSQL, the BackupInterval parameter is supported only when the instance is equipped with standard SSDs or enhanced SSDs (ESSDs).This parameter takes effect only when you set the BackupPolicyMode parameter to DataBackupPolicy.
  final pulumi.Input<String>? category;

  /// The compress type of instance policy. Valid values are `1`, `4`, `8`.
  final pulumi.Input<String>? compressType;

  /// Whether to backup instance log. Valid values are `true`, `false`, Default to `true`. Note: The 'Basic Edition' category Rds instance does not support setting log backup. [What is Basic Edition](https://www.alibabacloud.com/help/doc-detail/48980.htm).
  final pulumi.Input<bool>? enableBackupLog;

  /// Specifies whether to enable incremental backup. Valid values:
  /// - false (default): disables the feature.
  /// - true: enables the feature.
  /// -&gt;**NOTE:** This parameter takes effect only on instances that run SQL Server with cloud disks. This parameter takes effect only when BackupPolicyMode is set to DataBackupPolicy.
  final pulumi.Input<bool>? enableIncrementDataBackup;

  /// Instance high space usage protection policy. Valid when the `enable_backup_log` is `true`. Valid values are `Enable`, `Disable`.
  final pulumi.Input<String>? highSpaceUsageProtection;

  /// The Id of instance that can run database.
  final pulumi.Input<String>? instanceId;

  /// Instance log backup local retention hours. Valid when the `enable_backup_log` is `true`. Valid values: [0-7*24].
  final pulumi.Input<int>? localLogRetentionHours;

  /// Instance log backup local retention space. Valid when the `enable_backup_log` is `true`. Valid values: [0-50].
  final pulumi.Input<int>? localLogRetentionSpace;

  /// It has been deprecated from version 1.68.0, and use field 'enable_backup_log' instead.
  final pulumi.Input<bool>? logBackup;

  /// Instance log backup frequency. Valid when the instance engine is `SQLServer`. Valid values are `LogInterval`.
  final pulumi.Input<String>? logBackupFrequency;

  /// The number of binary log files that you want to retain on the instance. Default value: 60. Valid values: 6 to 100.
  /// -&gt;**NOTE:** This parameter takes effect only when you set the BackupPolicyMode parameter to LogBackupPolicy. If the instance runs MySQL, you can set this parameter to -1. The value -1 specifies that an unlimited number of binary log files can be retained on the instance.
  final pulumi.Input<int>? logBackupLocalRetentionNumber;

  /// Instance log backup retention days. Valid when the `enable_backup_log` is `1`. Valid values: [7-730]. Default to 7. It cannot be larger than `backup_retention_period`.
  final pulumi.Input<int>? logBackupRetentionPeriod;

  /// It has been deprecated from version 1.69.0, and use field 'log_backup_retention_period' instead.
  final pulumi.Input<int>? logRetentionPeriod;

  /// DB Instance backup period. Please set at least two days to ensure backing up at least twice a week. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday].
  final pulumi.Input<List<String>>? preferredBackupPeriods;

  /// DB instance backup time, in the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. Default to "02:00Z-03:00Z". China time is 8 hours behind it.
  final pulumi.Input<String>? preferredBackupTime;

  /// The policy based on which ApsaraDB RDS retains archived backup files if the instance is released. Default value: None. Valid values:
  /// * **None**: No archived backup files are retained.
  /// * **Lastest**: Only the most recent archived backup file is retained.
  /// * **All**: All archived backup files are retained.
  final pulumi.Input<String>? releasedKeepPolicy;

  /// It has been deprecated from version 1.69.0, and use field 'backup_retention_period' instead.
  final pulumi.Input<int>? retentionPeriod;

  /// Creates a new [BackupPolicyState].
  /// [archiveBackupKeepCount] Instance archive backup keep count. Valid when the `enable_backup_log` is `true` and instance is mysql local disk. When `archive_backup_keep_policy` is `ByMonth` Valid values: [1-31]. When `archive_backup_keep_policy` is `ByWeek` Valid values: [1-7].
  /// [archiveBackupKeepPolicy] Instance archive backup keep policy. Valid when the `enable_backup_log` is `true` and instance is mysql local disk. Valid values are `ByMonth`, `ByWeek`, `KeepAll`.
  /// [archiveBackupRetentionPeriod] Instance archive backup retention days. Valid when the `enable_backup_log` is `true` and instance is mysql local disk. Valid values: [30-1095], and `archive_backup_retention_period` must larger than `backup_retention_period` 730.
  /// [backupInterval] The frequency at which you want to perform a snapshot backup on the instance. Valid values:
  /// [backupMethod] The backup method of the instance. Valid values:
  /// [backupPeriods] It has been deprecated from version 1.69.0, and use field 'preferred_backup_period' instead.
  /// [backupPriority] Specifies whether the backup settings of a secondary instance are configured. Valid values:
  /// [backupRetentionPeriod] Instance backup retention days. Valid values: [7-730]. Default to 7. But mysql local disk is unlimited.
  /// [backupTime] It has been deprecated from version 1.69.0, and use field 'preferred_backup_time' instead.
  /// [category] Whether to enable second level backup.Valid values are `Flash`, `Standard`, Note:It only takes effect when the BackupPolicyMode parameter is DataBackupPolicy.
  /// [compressType] The compress type of instance policy. Valid values are `1`, `4`, `8`.
  /// [enableBackupLog] Whether to backup instance log. Valid values are `true`, `false`, Default to `true`. Note: The 'Basic Edition' category Rds instance does not support setting log backup. [What is Basic Edition](https://www.alibabacloud.com/help/doc-detail/48980.htm).
  /// [enableIncrementDataBackup] Specifies whether to enable incremental backup. Valid values:
  /// [highSpaceUsageProtection] Instance high space usage protection policy. Valid when the `enable_backup_log` is `true`. Valid values are `Enable`, `Disable`.
  /// [instanceId] The Id of instance that can run database.
  /// [localLogRetentionHours] Instance log backup local retention hours. Valid when the `enable_backup_log` is `true`. Valid values: [0-7*24].
  /// [localLogRetentionSpace] Instance log backup local retention space. Valid when the `enable_backup_log` is `true`. Valid values: [0-50].
  /// [logBackup] It has been deprecated from version 1.68.0, and use field 'enable_backup_log' instead.
  /// [logBackupFrequency] Instance log backup frequency. Valid when the instance engine is `SQLServer`. Valid values are `LogInterval`.
  /// [logBackupLocalRetentionNumber] The number of binary log files that you want to retain on the instance. Default value: 60. Valid values: 6 to 100.
  /// [logBackupRetentionPeriod] Instance log backup retention days. Valid when the `enable_backup_log` is `1`. Valid values: [7-730]. Default to 7. It cannot be larger than `backup_retention_period`.
  /// [logRetentionPeriod] It has been deprecated from version 1.69.0, and use field 'log_backup_retention_period' instead.
  /// [preferredBackupPeriods] DB Instance backup period. Please set at least two days to ensure backing up at least twice a week. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday].
  /// [preferredBackupTime] DB instance backup time, in the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. Default to "02:00Z-03:00Z". China time is 8 hours behind it.
  /// [releasedKeepPolicy] The policy based on which ApsaraDB RDS retains archived backup files if the instance is released. Default value: None. Valid values:
  /// [retentionPeriod] It has been deprecated from version 1.69.0, and use field 'backup_retention_period' instead.
  BackupPolicyState({
    this.archiveBackupKeepCount,
    this.archiveBackupKeepPolicy,
    this.archiveBackupRetentionPeriod,
    this.backupInterval,
    this.backupMethod,
    this.backupPeriods,
    this.backupPriority,
    this.backupRetentionPeriod,
    this.backupTime,
    this.category,
    this.compressType,
    this.enableBackupLog,
    this.enableIncrementDataBackup,
    this.highSpaceUsageProtection,
    this.instanceId,
    this.localLogRetentionHours,
    this.localLogRetentionSpace,
    this.logBackup,
    this.logBackupFrequency,
    this.logBackupLocalRetentionNumber,
    this.logBackupRetentionPeriod,
    this.logRetentionPeriod,
    this.preferredBackupPeriods,
    this.preferredBackupTime,
    this.releasedKeepPolicy,
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveBackupKeepCount': ?archiveBackupKeepCount,
      'archiveBackupKeepPolicy': ?archiveBackupKeepPolicy,
      'archiveBackupRetentionPeriod': ?archiveBackupRetentionPeriod,
      'backupInterval': ?backupInterval,
      'backupMethod': ?backupMethod,
      'backupPeriods': ?backupPeriods,
      'backupPriority': ?backupPriority,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'backupTime': ?backupTime,
      'category': ?category,
      'compressType': ?compressType,
      'enableBackupLog': ?enableBackupLog,
      'enableIncrementDataBackup': ?enableIncrementDataBackup,
      'highSpaceUsageProtection': ?highSpaceUsageProtection,
      'instanceId': ?instanceId,
      'localLogRetentionHours': ?localLogRetentionHours,
      'localLogRetentionSpace': ?localLogRetentionSpace,
      'logBackup': ?logBackup,
      'logBackupFrequency': ?logBackupFrequency,
      'logBackupLocalRetentionNumber': ?logBackupLocalRetentionNumber,
      'logBackupRetentionPeriod': ?logBackupRetentionPeriod,
      'logRetentionPeriod': ?logRetentionPeriod,
      'preferredBackupPeriods': ?preferredBackupPeriods,
      'preferredBackupTime': ?preferredBackupTime,
      'releasedKeepPolicy': ?releasedKeepPolicy,
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory BackupPolicyState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyState(
      archiveBackupKeepCount: (() {
        final guardedValue = map['archiveBackupKeepCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      archiveBackupKeepPolicy: (() {
        final guardedValue = map['archiveBackupKeepPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      archiveBackupRetentionPeriod: (() {
        final guardedValue = map['archiveBackupRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      backupInterval: (() {
        final guardedValue = map['backupInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupMethod: (() {
        final guardedValue = map['backupMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupPeriods: (() {
        final guardedValue = map['backupPeriods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      backupPriority: (() {
        final guardedValue = map['backupPriority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      backupRetentionPeriod: (() {
        final guardedValue = map['backupRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      backupTime: (() {
        final guardedValue = map['backupTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      compressType: (() {
        final guardedValue = map['compressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableBackupLog: (() {
        final guardedValue = map['enableBackupLog'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableIncrementDataBackup: (() {
        final guardedValue = map['enableIncrementDataBackup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      highSpaceUsageProtection: (() {
        final guardedValue = map['highSpaceUsageProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localLogRetentionHours: (() {
        final guardedValue = map['localLogRetentionHours'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      localLogRetentionSpace: (() {
        final guardedValue = map['localLogRetentionSpace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      logBackup: (() {
        final guardedValue = map['logBackup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      logBackupFrequency: (() {
        final guardedValue = map['logBackupFrequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logBackupLocalRetentionNumber: (() {
        final guardedValue = map['logBackupLocalRetentionNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      logBackupRetentionPeriod: (() {
        final guardedValue = map['logBackupRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      logRetentionPeriod: (() {
        final guardedValue = map['logRetentionPeriod'];
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
      releasedKeepPolicy: (() {
        final guardedValue = map['releasedKeepPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionPeriod: (() {
        final guardedValue = map['retentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
