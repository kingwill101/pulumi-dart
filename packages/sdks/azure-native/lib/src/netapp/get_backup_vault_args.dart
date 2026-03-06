// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_backup_vault_args_doc}
/// Arguments for getBackupVault.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_backup_vault_args_doc}
class GetBackupVaultArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the Backup Vault
  final pulumi.Input<String> backupVaultName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBackupVaultArgs].
  /// [accountName] The name of the NetApp account
  /// [backupVaultName] The name of the Backup Vault
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetBackupVaultArgs({
    required this.accountName,
    required this.backupVaultName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'backupVaultName': backupVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupVaultArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      backupVaultName: pulumi.Input.fromValue(map['backupVaultName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

