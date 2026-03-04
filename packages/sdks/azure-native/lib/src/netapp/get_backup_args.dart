// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_backup_args_doc}
/// Arguments for getBackup.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_backup_args_doc}
class GetBackupArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;

  /// The name of the backup
  final pulumi.Input<String> backupName;

  /// The name of the Backup Vault
  final pulumi.Input<String> backupVaultName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBackupArgs].
  /// [accountName] The name of the NetApp account
  /// [backupName] The name of the backup
  /// [backupVaultName] The name of the Backup Vault
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBackupArgs({
    required this.accountName,
    required this.backupName,
    required this.backupVaultName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'backupName': backupName,
      'backupVaultName': backupVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBackupArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      backupName: pulumi.Input.fromValue(map['backupName'] as String),
      backupVaultName: pulumi.Input.fromValue(map['backupVaultName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
