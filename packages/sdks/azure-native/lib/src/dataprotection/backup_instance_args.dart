// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_instance.dart';

/// {@template pulumi_dataprotection_backup_instance_args_doc}
/// The set of arguments for BackupInstance.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_instance_args_doc}
class BackupInstanceArgs {
  /// The name of the backup instance.
  final pulumi.Input<String?>? backupInstanceName;
  /// BackupInstanceResource properties
  final pulumi.Input<BackupInstance?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Proxy Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The name of the backup vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [BackupInstanceArgs].
  /// [backupInstanceName] The name of the backup instance.
  /// [properties] BackupInstanceResource properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Proxy Resource tags.
  /// [vaultName] The name of the backup vault.
  const BackupInstanceArgs({
    this.backupInstanceName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupInstanceName': ?backupInstanceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<BackupInstance, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': vaultName,
    };
  }

  factory BackupInstanceArgs.fromMap(Map<String, dynamic> map) {
    return BackupInstanceArgs(
      backupInstanceName: (() { final guardedValue = map['backupInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupInstance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}
