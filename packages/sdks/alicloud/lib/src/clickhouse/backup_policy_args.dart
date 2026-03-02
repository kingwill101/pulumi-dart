// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clickhouse_backup_policy_backup_policy_args_doc}
/// The set of arguments for BackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_clickhouse_backup_policy_backup_policy_args_doc}
class BackupPolicyArgs {
  /// Data backup days. Valid values: `7` to `730`.
  final pulumi.Input<int>? backupRetentionPeriod;
  /// The id of the DBCluster.
  final pulumi.Input<String> dbClusterId;
  /// DBCluster Backup period. A list of DBCluster Backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].
  final pulumi.Input<List<String>> preferredBackupPeriods;
  /// DBCluster backup time, in the format of `HH:mmZ-HH:mmZ`. Time setting interval is one hour. China time is 8 hours behind it.
  final pulumi.Input<String> preferredBackupTime;

  /// Creates a new [BackupPolicyArgs].
  /// [backupRetentionPeriod] Data backup days. Valid values: `7` to `730`.
  /// [dbClusterId] The id of the DBCluster.
  /// [preferredBackupPeriods] DBCluster Backup period. A list of DBCluster Backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].
  /// [preferredBackupTime] DBCluster backup time, in the format of `HH:mmZ-HH:mmZ`. Time setting interval is one hour. China time is 8 hours behind it.
  BackupPolicyArgs({
    this.backupRetentionPeriod,
    required this.dbClusterId,
    required this.preferredBackupPeriods,
    required this.preferredBackupTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'dbClusterId': dbClusterId,
      'preferredBackupPeriods': preferredBackupPeriods,
      'preferredBackupTime': preferredBackupTime,
    };
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : (map['backupRetentionPeriod'] as int).input(),
      dbClusterId: (map['dbClusterId'] as String).input(),
      preferredBackupPeriods: ((map['preferredBackupPeriods'] as List).cast<String>()).input(),
      preferredBackupTime: (map['preferredBackupTime'] as String).input(),
    );
  }
}

