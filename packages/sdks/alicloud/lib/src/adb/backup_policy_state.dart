// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupPolicy resources.
class BackupPolicyState {
  /// Cluster backup retention days, Fixed for 7 days, not modified.
  final pulumi.Input<String>? backupRetentionPeriod;
  /// The Id of cluster that can run database.
  final pulumi.Input<String>? dbClusterId;
  /// ADB Cluster backup period. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday].
  final pulumi.Input<List<String>>? preferredBackupPeriods;
  /// ADB Cluster backup time, in the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. China time is 8 hours behind it.
  final pulumi.Input<String>? preferredBackupTime;

  /// Creates a new [BackupPolicyState].
  /// [backupRetentionPeriod] Cluster backup retention days, Fixed for 7 days, not modified.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [preferredBackupPeriods] ADB Cluster backup period. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday].
  /// [preferredBackupTime] ADB Cluster backup time, in the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. China time is 8 hours behind it.
  BackupPolicyState({
    pulumi.Output<String>? backupRetentionPeriod,
    pulumi.Output<String>? dbClusterId,
    pulumi.Output<List<String>>? preferredBackupPeriods,
    pulumi.Output<String>? preferredBackupTime,
  }) :
      backupRetentionPeriod = pulumi.Input.asOptionalInput<String>(backupRetentionPeriod),
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      preferredBackupPeriods = pulumi.Input.asOptionalInput<List<String>>(preferredBackupPeriods),
      preferredBackupTime = pulumi.Input.asOptionalInput<String>(preferredBackupTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'dbClusterId': ?dbClusterId,
      'preferredBackupPeriods': ?preferredBackupPeriods,
      'preferredBackupTime': ?preferredBackupTime,
    };
  }

  factory BackupPolicyState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyState(
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : pulumi.Output.create<String>(map['backupRetentionPeriod'] as String),
      dbClusterId: map['dbClusterId'] == null ? null : pulumi.Output.create<String>(map['dbClusterId'] as String),
      preferredBackupPeriods: map['preferredBackupPeriods'] == null ? null : pulumi.Output.create<List<String>>((map['preferredBackupPeriods'] as List).cast<String>()),
      preferredBackupTime: map['preferredBackupTime'] == null ? null : pulumi.Output.create<String>(map['preferredBackupTime'] as String),
    );
  }
}

