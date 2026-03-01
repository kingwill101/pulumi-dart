// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_instance_dataprotection.dart';

/// {@template pulumi_dataprotection_backup_instance_args_doc}
/// The set of arguments for BackupInstance.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_instance_args_doc}
class BackupInstanceArgs {
  /// The name of the backup instance.
  final pulumi.Input<String>? backupInstanceName;
  /// BackupInstanceResource properties
  final pulumi.Input<BackupInstanceDataprotection>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Proxy Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the backup vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [BackupInstanceArgs].
  /// [backupInstanceName] The name of the backup instance.
  /// [properties] BackupInstanceResource properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Proxy Resource tags.
  /// [vaultName] The name of the backup vault.
  BackupInstanceArgs({
    pulumi.Output<String>? backupInstanceName,
    pulumi.Output<BackupInstanceDataprotection>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vaultName,
  }) :
      backupInstanceName = pulumi.Input.asOptionalInput<String>(backupInstanceName),
      properties = pulumi.Input.asOptionalInput<BackupInstanceDataprotection>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupInstanceName': ?backupInstanceName,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': vaultName,
    };
  }

  factory BackupInstanceArgs.fromMap(Map<String, dynamic> map) {
    return BackupInstanceArgs(
      backupInstanceName: map['backupInstanceName'] == null ? null : pulumi.Output.create<String>(map['backupInstanceName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<BackupInstanceDataprotection>(map['properties'] as BackupInstanceDataprotection),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

