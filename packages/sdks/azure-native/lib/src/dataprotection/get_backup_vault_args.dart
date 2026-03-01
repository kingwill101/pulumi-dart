// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_get_backup_vault_args_doc}
/// Arguments for getBackupVault.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_get_backup_vault_args_doc}
class GetBackupVaultArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the backup vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetBackupVaultArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The name of the backup vault.
  GetBackupVaultArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vaultName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetBackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupVaultArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

