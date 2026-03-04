// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_adb_backup_policy_backup_policy_args_doc}
/// The set of arguments for BackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_adb_backup_policy_backup_policy_args_doc}
class BackupPolicyArgs {
  /// The Id of cluster that can run database.
  final pulumi.Input<String> dbClusterId;

  /// ADB Cluster backup period. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday].
  final pulumi.Input<List<String>> preferredBackupPeriods;

  /// ADB Cluster backup time, in the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. China time is 8 hours behind it.
  final pulumi.Input<String> preferredBackupTime;

  /// Creates a new [BackupPolicyArgs].
  /// [dbClusterId] The Id of cluster that can run database.
  /// [preferredBackupPeriods] ADB Cluster backup period. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday].
  /// [preferredBackupTime] ADB Cluster backup time, in the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. China time is 8 hours behind it.
  BackupPolicyArgs({
    required this.dbClusterId,
    required this.preferredBackupPeriods,
    required this.preferredBackupTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': dbClusterId,
      'preferredBackupPeriods': preferredBackupPeriods,
      'preferredBackupTime': preferredBackupTime,
    };
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      preferredBackupPeriods: pulumi.Input.fromValue(
        (map['preferredBackupPeriods'] as List).cast<String>(),
      ),
      preferredBackupTime: pulumi.Input.fromValue(
        map['preferredBackupTime'] as String,
      ),
    );
  }
}
