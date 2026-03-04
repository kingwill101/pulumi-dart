// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RdsBackup resources.
class RdsBackupState {
  /// The backup id.
  final pulumi.Input<String>? backupId;

  /// The type of backup that you want to perform. Default value: `Physical`. Valid values: `Logical`, `Physical` and `Snapshot`.
  final pulumi.Input<String>? backupMethod;

  /// The policy that you want to use for the backup task. Valid values:
  /// * **db**: specifies to perform a database-level backup.
  /// * **instance**: specifies to perform an instance-level backup.
  final pulumi.Input<String>? backupStrategy;

  /// The method that you want to use for the backup task. Default value: `Auto`. Valid values:
  /// * **Auto**: specifies to automatically perform a full or incremental backup.
  /// * **FullBackup**: specifies to perform a full backup.
  final pulumi.Input<String>? backupType;

  /// The db instance id.
  final pulumi.Input<String>? dbInstanceId;

  /// The names of the databases whose data you want to back up. Separate the names of the databases with commas (,).
  final pulumi.Input<String>? dbName;

  /// Remove form state when resource cannot be deleted. Valid values: `true` and `false`.
  final pulumi.Input<bool>? removeFromState;

  /// Indicates whether the data backup file can be deleted. Valid values: `Enabled` and `Disabled`.
  final pulumi.Input<String>? storeStatus;

  /// Creates a new [RdsBackupState].
  /// [backupId] The backup id.
  /// [backupMethod] The type of backup that you want to perform. Default value: `Physical`. Valid values: `Logical`, `Physical` and `Snapshot`.
  /// [backupStrategy] The policy that you want to use for the backup task. Valid values:
  /// [backupType] The method that you want to use for the backup task. Default value: `Auto`. Valid values:
  /// [dbInstanceId] The db instance id.
  /// [dbName] The names of the databases whose data you want to back up. Separate the names of the databases with commas (,).
  /// [removeFromState] Remove form state when resource cannot be deleted. Valid values: `true` and `false`.
  /// [storeStatus] Indicates whether the data backup file can be deleted. Valid values: `Enabled` and `Disabled`.
  RdsBackupState({
    this.backupId,
    this.backupMethod,
    this.backupStrategy,
    this.backupType,
    this.dbInstanceId,
    this.dbName,
    this.removeFromState,
    this.storeStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': ?backupId,
      'backupMethod': ?backupMethod,
      'backupStrategy': ?backupStrategy,
      'backupType': ?backupType,
      'dbInstanceId': ?dbInstanceId,
      'dbName': ?dbName,
      'removeFromState': ?removeFromState,
      'storeStatus': ?storeStatus,
    };
  }

  factory RdsBackupState.fromMap(Map<String, dynamic> map) {
    return RdsBackupState(
      backupId: (() {
        final guardedValue = map['backupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupMethod: (() {
        final guardedValue = map['backupMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupStrategy: (() {
        final guardedValue = map['backupStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupType: (() {
        final guardedValue = map['backupType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceId: (() {
        final guardedValue = map['dbInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbName: (() {
        final guardedValue = map['dbName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      removeFromState: (() {
        final guardedValue = map['removeFromState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      storeStatus: (() {
        final guardedValue = map['storeStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
