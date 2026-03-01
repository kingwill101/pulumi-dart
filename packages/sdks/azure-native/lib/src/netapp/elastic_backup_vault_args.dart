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
  final pulumi.Input<String>? backupVaultName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ElasticBackupVaultArgs].
  /// [accountName] The name of the ElasticAccount
  /// [backupVaultName] The name of the ElasticBackupVault
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ElasticBackupVaultArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? backupVaultName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      backupVaultName = pulumi.Input.asOptionalInput<String>(backupVaultName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      backupVaultName: map['backupVaultName'] == null ? null : pulumi.Output.create<String>(map['backupVaultName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

