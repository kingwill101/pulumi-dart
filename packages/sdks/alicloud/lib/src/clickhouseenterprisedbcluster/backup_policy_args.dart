// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clickhouseenterprisedbcluster_backup_policy_backup_policy_args_doc}
/// The set of arguments for BackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_clickhouseenterprisedbcluster_backup_policy_backup_policy_args_doc}
class BackupPolicyArgs {
  /// Backup retention time.
  final pulumi.Input<int> backupRetentionPeriod;
  /// The instance ID.
  final pulumi.Input<String> dbInstanceId;
  /// Backup period.
  final pulumi.Input<String> preferredBackupPeriod;
  /// Backup time.
  final pulumi.Input<String> preferredBackupTime;

  /// Creates a new [BackupPolicyArgs].
  /// [backupRetentionPeriod] Backup retention time.
  /// [dbInstanceId] The instance ID.
  /// [preferredBackupPeriod] Backup period.
  /// [preferredBackupTime] Backup time.
  BackupPolicyArgs({
    required this.backupRetentionPeriod,
    required this.dbInstanceId,
    required this.preferredBackupPeriod,
    required this.preferredBackupTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionPeriod': backupRetentionPeriod,
      'dbInstanceId': dbInstanceId,
      'preferredBackupPeriod': preferredBackupPeriod,
      'preferredBackupTime': preferredBackupTime,
    };
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      backupRetentionPeriod: (map['backupRetentionPeriod'] as int).input(),
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      preferredBackupPeriod: (map['preferredBackupPeriod'] as String).input(),
      preferredBackupTime: (map['preferredBackupTime'] as String).input(),
    );
  }
}

