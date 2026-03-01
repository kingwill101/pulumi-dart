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
    pulumi.Output<int>? backupRetentionPeriod,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<bool>? enableRecoveryPoint,
    pulumi.Output<String>? preferredBackupPeriod,
    pulumi.Output<String>? preferredBackupTime,
    pulumi.Output<String>? recoveryPointPeriod,
  }) :
      backupRetentionPeriod = pulumi.Input.asOptionalInput<int>(backupRetentionPeriod),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      enableRecoveryPoint = pulumi.Input.asOptionalInput<bool>(enableRecoveryPoint),
      preferredBackupPeriod = pulumi.Input.asOptionalInput<String>(preferredBackupPeriod),
      preferredBackupTime = pulumi.Input.asOptionalInput<String>(preferredBackupTime),
      recoveryPointPeriod = pulumi.Input.asOptionalInput<String>(recoveryPointPeriod);

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
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['backupRetentionPeriod'] as int),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      enableRecoveryPoint: map['enableRecoveryPoint'] == null ? null : pulumi.Output.create<bool>(map['enableRecoveryPoint'] as bool),
      preferredBackupPeriod: map['preferredBackupPeriod'] == null ? null : pulumi.Output.create<String>(map['preferredBackupPeriod'] as String),
      preferredBackupTime: map['preferredBackupTime'] == null ? null : pulumi.Output.create<String>(map['preferredBackupTime'] as String),
      recoveryPointPeriod: map['recoveryPointPeriod'] == null ? null : pulumi.Output.create<String>(map['recoveryPointPeriod'] as String),
    );
  }
}

