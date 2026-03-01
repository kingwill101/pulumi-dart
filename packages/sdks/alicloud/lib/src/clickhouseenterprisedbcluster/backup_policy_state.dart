// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupPolicy resources.
class BackupPolicyState {
  /// Backup retention time.
  final pulumi.Input<int>? backupRetentionPeriod;
  /// The instance ID.
  final pulumi.Input<String>? dbInstanceId;
  /// Backup period.
  final pulumi.Input<String>? preferredBackupPeriod;
  /// Backup time.
  final pulumi.Input<String>? preferredBackupTime;

  /// Creates a new [BackupPolicyState].
  /// [backupRetentionPeriod] Backup retention time.
  /// [dbInstanceId] The instance ID.
  /// [preferredBackupPeriod] Backup period.
  /// [preferredBackupTime] Backup time.
  BackupPolicyState({
    pulumi.Output<int>? backupRetentionPeriod,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? preferredBackupPeriod,
    pulumi.Output<String>? preferredBackupTime,
  }) :
      backupRetentionPeriod = pulumi.Input.asOptionalInput<int>(backupRetentionPeriod),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      preferredBackupPeriod = pulumi.Input.asOptionalInput<String>(preferredBackupPeriod),
      preferredBackupTime = pulumi.Input.asOptionalInput<String>(preferredBackupTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'dbInstanceId': ?dbInstanceId,
      'preferredBackupPeriod': ?preferredBackupPeriod,
      'preferredBackupTime': ?preferredBackupTime,
    };
  }

  factory BackupPolicyState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyState(
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['backupRetentionPeriod'] as int),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      preferredBackupPeriod: map['preferredBackupPeriod'] == null ? null : pulumi.Output.create<String>(map['preferredBackupPeriod'] as String),
      preferredBackupTime: map['preferredBackupTime'] == null ? null : pulumi.Output.create<String>(map['preferredBackupTime'] as String),
    );
  }
}

