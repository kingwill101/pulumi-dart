// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupPolicy resources.
class BackupPolicyState {
  /// Data backup retention days.
  final pulumi.Input<int>? backupRetentionPeriod;
  /// The instance ID.
  /// > **NOTE:**  You can call the DescribeDBInstances operation to view the details of all AnalyticDB PostgreSQL instances in the target region, including the instance ID.
  final pulumi.Input<String>? dbInstanceId;
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
  final pulumi.Input<String>? preferredBackupPeriod;
  /// Data backup time. Format: HH:mmZ-HH:mmZ(UTC time).
  final pulumi.Input<String>? preferredBackupTime;
  /// Recovery point frequency. Value Description:
  /// - **1**: Hourly.
  /// - **2**: Every two hours.
  /// - **4**: Every four hours.
  /// - **8**: Every eight hours.
  final pulumi.Input<String>? recoveryPointPeriod;

  /// Creates a new [BackupPolicyState].
  /// [backupRetentionPeriod] Data backup retention days.
  /// [dbInstanceId] The instance ID.
  /// [enableRecoveryPoint] Whether to enable automatic recovery points. Value Description:
  /// [preferredBackupPeriod] Data backup cycle. Separate multiple values with commas (,). Value Description:
  /// [preferredBackupTime] Data backup time. Format: HH:mmZ-HH:mmZ(UTC time).
  /// [recoveryPointPeriod] Recovery point frequency. Value Description:
  BackupPolicyState({
    this.backupRetentionPeriod,
    this.dbInstanceId,
    this.enableRecoveryPoint,
    this.preferredBackupPeriod,
    this.preferredBackupTime,
    this.recoveryPointPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'dbInstanceId': ?dbInstanceId,
      'enableRecoveryPoint': ?enableRecoveryPoint,
      'preferredBackupPeriod': ?preferredBackupPeriod,
      'preferredBackupTime': ?preferredBackupTime,
      'recoveryPointPeriod': ?recoveryPointPeriod,
    };
  }

  factory BackupPolicyState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyState(
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : (map['backupRetentionPeriod'] as int).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId'] as String).input(),
      enableRecoveryPoint: map['enableRecoveryPoint'] == null ? null : (map['enableRecoveryPoint'] as bool).input(),
      preferredBackupPeriod: map['preferredBackupPeriod'] == null ? null : (map['preferredBackupPeriod'] as String).input(),
      preferredBackupTime: map['preferredBackupTime'] == null ? null : (map['preferredBackupTime'] as String).input(),
      recoveryPointPeriod: map['recoveryPointPeriod'] == null ? null : (map['recoveryPointPeriod'] as String).input(),
    );
  }
}

