// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_elastic_backup_args_doc}
/// Arguments for getElasticBackup.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_elastic_backup_args_doc}
class GetElasticBackupArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;
  /// The name of the ElasticBackup
  final pulumi.Input<String> backupName;
  /// The name of the ElasticBackupVault
  final pulumi.Input<String> backupVaultName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetElasticBackupArgs].
  /// [accountName] The name of the ElasticAccount
  /// [backupName] The name of the ElasticBackup
  /// [backupVaultName] The name of the ElasticBackupVault
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetElasticBackupArgs({
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

  factory GetElasticBackupArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticBackupArgs(
      accountName: (map['accountName'] as String).input(),
      backupName: (map['backupName'] as String).input(),
      backupVaultName: (map['backupVaultName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

