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
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> backupName,
    required pulumi.Output<String> backupVaultName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      backupName = pulumi.Input.asInput<String>(backupName),
      backupVaultName = pulumi.Input.asInput<String>(backupVaultName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      backupName: pulumi.Output.create<String>(map['backupName'] as String),
      backupVaultName: pulumi.Output.create<String>(map['backupVaultName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

