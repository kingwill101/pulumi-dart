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
    pulumi.Output<String>? backupMethod,
    pulumi.Output<String>? backupStrategy,
    pulumi.Output<String>? backupType,
    required pulumi.Output<String> dbInstanceId,
    pulumi.Output<String>? dbName,
    pulumi.Output<bool>? removeFromState,
  }) :
      backupMethod = pulumi.Input.asOptionalInput<String>(backupMethod),
      backupStrategy = pulumi.Input.asOptionalInput<String>(backupStrategy),
      backupType = pulumi.Input.asOptionalInput<String>(backupType),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      dbName = pulumi.Input.asOptionalInput<String>(dbName),
      removeFromState = pulumi.Input.asOptionalInput<bool>(removeFromState);

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
      backupMethod: map['backupMethod'] == null ? null : pulumi.Output.create<String>(map['backupMethod'] as String),
      backupStrategy: map['backupStrategy'] == null ? null : pulumi.Output.create<String>(map['backupStrategy'] as String),
      backupType: map['backupType'] == null ? null : pulumi.Output.create<String>(map['backupType'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      dbName: map['dbName'] == null ? null : pulumi.Output.create<String>(map['dbName'] as String),
      removeFromState: map['removeFromState'] == null ? null : pulumi.Output.create<bool>(map['removeFromState'] as bool),
    );
  }
}

