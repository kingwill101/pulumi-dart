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
    required this.backupInstanceName,
    required this.resourceGroupName,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupInstanceName': backupInstanceName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetBackupInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupInstanceArgs(
      backupInstanceName: (map['backupInstanceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      vaultName: (map['vaultName'] as String).input(),
    );
  }
}

