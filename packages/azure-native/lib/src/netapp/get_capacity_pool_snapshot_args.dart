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
  GetCapacityPoolSnapshotArgs({
    required String accountName,
    required String poolName,
    required String resourceGroupName,
    required String snapshotName,
    required String volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      snapshotName = pulumi.Input.asInput<String>(snapshotName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

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
      accountName: map['accountName'] as String,
      poolName: map['poolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      snapshotName: map['snapshotName'] as String,
      volumeName: map['volumeName'] as String,
    );
  }
}

