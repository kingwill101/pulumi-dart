// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_backup_policy_backup_policy_args_doc}
/// The set of arguments for BackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_gpdb_backup_policy_backup_policy_args_doc}
class BackupPolicyArgs {
  /// Data backup retention days.
  final pulumi.Input<int>? backupRetentionPeriod;
  /// The instance ID.
  /// > **NOTE:**  You can call the DescribeDBInstances operation to view the details of all AnalyticDB PostgreSQL instances in the target region, including the instance ID.
  final pulumi.Input<String> dbInstanceId;
  /// Whether to enable automatic recovery points. Value Description:
  /// - **true**: enabled.
  /// - **false**: Closed.
  final pulumi.Input<bool>? enableRecoveryPoint;
  /// Data backup cycle. Separate multiple values with commas (,). Value Description:
  /// - **Monday**: Monday.
  /// - **Tuesday**: Tuesday.
  /// - **Wednesday**: Wednesday.
  /// - **Thursday**: Thursday.
  /// - **Friday**: Friday.
  /// - **Saturday**: Saturday.
  /// - **Sunday**: Sunday.
  final pulumi.Input<String> preferredBackupPeriod;
  /// Data backup time. Format: HH:mmZ-HH:mmZ(UTC time).
  final pulumi.Input<String> preferredBackupTime;
  /// Recovery point frequency. Value Description:
  /// - **1**: Hourly.
  /// - **2**: Every two hours.
  /// - **4**: Every four hours.
  /// - **8**: Every eight hours.
  final pulumi.Input<String>? recoveryPointPeriod;

  /// Creates a new [BackupPolicyArgs].
  /// [backupRetentionPeriod] Data backup retention days.
  /// [dbInstanceId] The instance ID.
  /// [enableRecoveryPoint] Whether to enable automatic recovery points. Value Description:
  /// [preferredBackupPeriod] Data backup cycle. Separate multiple values with commas (,). Value Description:
  /// [preferredBackupTime] Data backup time. Format: HH:mmZ-HH:mmZ(UTC time).
  /// [recoveryPointPeriod] Recovery point frequency. Value Description:
  BackupPolicyArgs({
    int? backupRetentionPeriod,
    required String dbInstanceId,
    bool? enableRecoveryPoint,
    required String preferredBackupPeriod,
    required String preferredBackupTime,
    String? recoveryPointPeriod,
  }) :
      backupRetentionPeriod = pulumi.Input.asOptionalInput<int>(backupRetentionPeriod),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      enableRecoveryPoint = pulumi.Input.asOptionalInput<bool>(enableRecoveryPoint),
      preferredBackupPeriod = pulumi.Input.asInput<String>(preferredBackupPeriod),
      preferredBackupTime = pulumi.Input.asInput<String>(preferredBackupTime),
      recoveryPointPeriod = pulumi.Input.asOptionalInput<String>(recoveryPointPeriod);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'dbInstanceId': dbInstanceId,
      'enableRecoveryPoint': ?enableRecoveryPoint,
      'preferredBackupPeriod': preferredBackupPeriod,
      'preferredBackupTime': preferredBackupTime,
      'recoveryPointPeriod': ?recoveryPointPeriod,
    };
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : map['backupRetentionPeriod'] as int,
      dbInstanceId: map['dbInstanceId'] as String,
      enableRecoveryPoint: map['enableRecoveryPoint'] == null ? null : map['enableRecoveryPoint'] as bool,
      preferredBackupPeriod: map['preferredBackupPeriod'] as String,
      preferredBackupTime: map['preferredBackupTime'] as String,
      recoveryPointPeriod: map['recoveryPointPeriod'] == null ? null : map['recoveryPointPeriod'] as String,
    );
  }
}

