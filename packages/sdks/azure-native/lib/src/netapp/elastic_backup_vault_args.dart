// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_elastic_backup_vault_args_doc}
/// The set of arguments for ElasticBackupVault.
/// {@endtemplate}
/// {@macro pulumi_netapp_elastic_backup_vault_args_doc}
class ElasticBackupVaultArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;
  /// The name of the ElasticBackupVault
  final pulumi.Input<String?>? backupVaultName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ElasticBackupVaultArgs].
  /// [accountName] The name of the ElasticAccount
  /// [backupVaultName] The name of the ElasticBackupVault
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const ElasticBackupVaultArgs({
    required this.accountName,
    this.backupVaultName,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'backupVaultName': ?backupVaultName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ElasticBackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return ElasticBackupVaultArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      backupVaultName: (() { final guardedValue = map['backupVaultName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
