// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbformysql_get_long_running_backup_args_doc}
/// Arguments for getLongRunningBackup.
/// {@endtemplate}
/// {@macro pulumi_dbformysql_get_long_running_backup_args_doc}
class GetLongRunningBackupArgs {
  /// The name of the backup.
  final pulumi.Input<String> backupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetLongRunningBackupArgs].
  /// [backupName] The name of the backup.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  GetLongRunningBackupArgs({
    required this.backupName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': backupName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetLongRunningBackupArgs.fromMap(Map<String, dynamic> map) {
    return GetLongRunningBackupArgs(
      backupName: pulumi.Input.fromValue(map['backupName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}

