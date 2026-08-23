// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_backup_properties.dart';

/// {@template pulumi_netapp_elastic_backup_args_doc}
/// The set of arguments for ElasticBackup.
/// {@endtemplate}
/// {@macro pulumi_netapp_elastic_backup_args_doc}
class ElasticBackupArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;
  /// The name of the ElasticBackup
  final pulumi.Input<String>? backupName;
  /// The name of the ElasticBackupVault
  final pulumi.Input<String> backupVaultName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ElasticBackupProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ElasticBackupArgs].
  /// [accountName] The name of the ElasticAccount
  /// [backupName] The name of the ElasticBackup
  /// [backupVaultName] The name of the ElasticBackupVault
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ElasticBackupArgs({
    required this.accountName,
    this.backupName,
    required this.backupVaultName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'backupName': ?backupName,
      'backupVaultName': backupVaultName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ElasticBackupProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ElasticBackupArgs.fromMap(Map<String, dynamic> map) {
    return ElasticBackupArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      backupName: (() { final guardedValue = map['backupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupVaultName: pulumi.Input.fromValue(map['backupVaultName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticBackupProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
