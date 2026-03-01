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
  ElasticBackupArgs({
    required String accountName,
    String? backupName,
    required String backupVaultName,
    ElasticBackupProperties? properties,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      backupName = pulumi.Input.asOptionalInput<String>(backupName),
      backupVaultName = pulumi.Input.asInput<String>(backupVaultName),
      properties = pulumi.Input.asOptionalInput<ElasticBackupProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      accountName: map['accountName'] as String,
      backupName: map['backupName'] == null ? null : map['backupName'] as String,
      backupVaultName: map['backupVaultName'] as String,
      properties: map['properties'] == null ? null : ElasticBackupProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

