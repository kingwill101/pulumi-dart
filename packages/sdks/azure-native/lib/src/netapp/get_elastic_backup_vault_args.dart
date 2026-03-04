// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_elastic_backup_vault_args_doc}
/// Arguments for getElasticBackupVault.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_elastic_backup_vault_args_doc}
class GetElasticBackupVaultArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;

  /// The name of the ElasticBackupVault
  final pulumi.Input<String> backupVaultName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetElasticBackupVaultArgs].
  /// [accountName] The name of the ElasticAccount
  /// [backupVaultName] The name of the ElasticBackupVault
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetElasticBackupVaultArgs({
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

  factory GetElasticBackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticBackupVaultArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      backupVaultName: pulumi.Input.fromValue(map['backupVaultName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
