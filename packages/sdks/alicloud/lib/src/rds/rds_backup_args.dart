// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_rds_backup_rds_backup_args_doc}
/// The set of arguments for RdsBackup.
/// {@endtemplate}
/// {@macro pulumi_rds_rds_backup_rds_backup_args_doc}
class RdsBackupArgs {
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
  final pulumi.Input<String> dbInstanceId;
  /// The names of the databases whose data you want to back up. Separate the names of the databases with commas (,).
  final pulumi.Input<String>? dbName;
  /// Remove form state when resource cannot be deleted. Valid values: `true` and `false`.
  final pulumi.Input<bool>? removeFromState;

  /// Creates a new [RdsBackupArgs].
  /// [backupMethod] The type of backup that you want to perform. Default value: `Physical`. Valid values: `Logical`, `Physical` and `Snapshot`.
  /// [backupStrategy] The policy that you want to use for the backup task. Valid values:
  /// [backupType] The method that you want to use for the backup task. Default value: `Auto`. Valid values:
  /// [dbInstanceId] The db instance id.
  /// [dbName] The names of the databases whose data you want to back up. Separate the names of the databases with commas (,).
  /// [removeFromState] Remove form state when resource cannot be deleted. Valid values: `true` and `false`.
  RdsBackupArgs({
    this.backupMethod,
    this.backupStrategy,
    this.backupType,
    required this.dbInstanceId,
    this.dbName,
    this.removeFromState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupMethod': ?backupMethod,
      'backupStrategy': ?backupStrategy,
      'backupType': ?backupType,
      'dbInstanceId': dbInstanceId,
      'dbName': ?dbName,
      'removeFromState': ?removeFromState,
    };
  }

  factory RdsBackupArgs.fromMap(Map<String, dynamic> map) {
    return RdsBackupArgs(
      backupMethod: map['backupMethod'] == null ? null : (map['backupMethod']! as String).input(),
      backupStrategy: map['backupStrategy'] == null ? null : (map['backupStrategy']! as String).input(),
      backupType: map['backupType'] == null ? null : (map['backupType']! as String).input(),
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      dbName: map['dbName'] == null ? null : (map['dbName']! as String).input(),
      removeFromState: map['removeFromState'] == null ? null : (map['removeFromState']! as bool).input(),
    );
  }
}

