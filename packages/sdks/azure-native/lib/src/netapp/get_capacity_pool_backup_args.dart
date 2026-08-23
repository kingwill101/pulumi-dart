// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_capacity_pool_backup_args_doc}
/// Arguments for getCapacityPoolBackup.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_capacity_pool_backup_args_doc}
class GetCapacityPoolBackupArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the backup
  final pulumi.Input<String> backupName;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the volume
  final pulumi.Input<String> volumeName;

  /// Creates a new [GetCapacityPoolBackupArgs].
  /// [accountName] The name of the NetApp account
  /// [backupName] The name of the backup
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeName] The name of the volume
  const GetCapacityPoolBackupArgs({
    required this.accountName,
    required this.backupName,
    required this.poolName,
    required this.resourceGroupName,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'backupName': backupName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'volumeName': volumeName,
    };
  }

  factory GetCapacityPoolBackupArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolBackupArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      backupName: pulumi.Input.fromValue(map['backupName'] as String),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}
