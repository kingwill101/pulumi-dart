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
  GetCapacityPoolBackupArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> backupName,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      backupName = pulumi.Input.asInput<String>(backupName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      backupName: pulumi.Output.create<String>(map['backupName'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      volumeName: pulumi.Output.create<String>(map['volumeName'] as String),
    );
  }
}

