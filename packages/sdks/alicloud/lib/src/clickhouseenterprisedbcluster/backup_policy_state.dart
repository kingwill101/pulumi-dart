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
    this.backupRetentionPeriod,
    this.dbInstanceId,
    this.preferredBackupPeriod,
    this.preferredBackupTime,
  });

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
      backupRetentionPeriod: (() {
        final guardedValue = map['backupRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dbInstanceId: (() {
        final guardedValue = map['dbInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preferredBackupPeriod: (() {
        final guardedValue = map['preferredBackupPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preferredBackupTime: (() {
        final guardedValue = map['preferredBackupTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
