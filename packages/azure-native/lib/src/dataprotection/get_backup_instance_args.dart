// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_get_backup_instance_args_doc}
/// Arguments for getBackupInstance.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_get_backup_instance_args_doc}
class GetBackupInstanceArgs {
  /// The name of the backup instance.
  final pulumi.Input<String> backupInstanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the backup vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetBackupInstanceArgs].
  /// [backupInstanceName] The name of the backup instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The name of the backup vault.
  GetBackupInstanceArgs({
    required String backupInstanceName,
    required String resourceGroupName,
    required String vaultName,
  }) :
      backupInstanceName = pulumi.Input.asInput<String>(backupInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupInstanceName': backupInstanceName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetBackupInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupInstanceArgs(
      backupInstanceName: map['backupInstanceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      vaultName: map['vaultName'] as String,
    );
  }
}

