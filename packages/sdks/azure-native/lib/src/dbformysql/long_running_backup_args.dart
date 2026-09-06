// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbformysql_long_running_backup_args_doc}
/// The set of arguments for LongRunningBackup.
/// {@endtemplate}
/// {@macro pulumi_dbformysql_long_running_backup_args_doc}
class LongRunningBackupArgs {
  /// The name of the backup.
  final pulumi.Input<String?>? backupName;
  /// Backup name
  final pulumi.Input<String?>? backupNameV2;
  final pulumi.Input<dynamic>? backupType;
  /// Backup completed time (ISO8601 format).
  final pulumi.Input<String?>? completedTime;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// Backup source
  final pulumi.Input<String?>? source;

  /// Creates a new [LongRunningBackupArgs].
  /// [backupName] The name of the backup.
  /// [backupNameV2] Backup name
  /// [backupType] Optional.
  /// [completedTime] Backup completed time (ISO8601 format).
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [source] Backup source
  const LongRunningBackupArgs({
    this.backupName,
    this.backupNameV2,
    this.backupType,
    this.completedTime,
    required this.resourceGroupName,
    required this.serverName,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': ?backupName,
      'backupNameV2': ?backupNameV2,
      'backupType': ?backupType,
      'completedTime': ?completedTime,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'source': ?source,
    };
  }

  factory LongRunningBackupArgs.fromMap(Map<String, dynamic> map) {
    return LongRunningBackupArgs(
      backupName: (() { final guardedValue = map['backupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupNameV2: (() { final guardedValue = map['backupNameV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupType: (() { final guardedValue = map['backupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      completedTime: (() { final guardedValue = map['completedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
