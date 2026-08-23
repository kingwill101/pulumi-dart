// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_capacity_pool_snapshot_args_doc}
/// Arguments for getCapacityPoolSnapshot.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_capacity_pool_snapshot_args_doc}
class GetCapacityPoolSnapshotArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the snapshot
  final pulumi.Input<String> snapshotName;
  /// The name of the volume
  final pulumi.Input<String> volumeName;

  /// Creates a new [GetCapacityPoolSnapshotArgs].
  /// [accountName] The name of the NetApp account
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotName] The name of the snapshot
  /// [volumeName] The name of the volume
  const GetCapacityPoolSnapshotArgs({
    required this.accountName,
    required this.poolName,
    required this.resourceGroupName,
    required this.snapshotName,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'snapshotName': snapshotName,
      'volumeName': volumeName,
    };
  }

  factory GetCapacityPoolSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolSnapshotArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      snapshotName: pulumi.Input.fromValue(map['snapshotName'] as String),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}
