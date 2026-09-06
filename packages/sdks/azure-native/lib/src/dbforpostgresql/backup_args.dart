// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_backup_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_backup_args_doc}
class BackupArgs {
  /// Name of the backup.
  final pulumi.Input<String?>? backupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [BackupArgs].
  /// [backupName] Name of the backup.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  const BackupArgs({
    this.backupName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': ?backupName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      backupName: (() { final guardedValue = map['backupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
