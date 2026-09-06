// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_capacity_pool_snapshot_args_doc}
/// The set of arguments for CapacityPoolSnapshot.
/// {@endtemplate}
/// {@macro pulumi_netapp_capacity_pool_snapshot_args_doc}
class CapacityPoolSnapshotArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// Resource location
  final pulumi.Input<String?>? location;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the snapshot
  final pulumi.Input<String?>? snapshotName;
  /// The name of the volume
  final pulumi.Input<String> volumeName;

  /// Creates a new [CapacityPoolSnapshotArgs].
  /// [accountName] The name of the NetApp account
  /// [location] Resource location
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotName] The name of the snapshot
  /// [volumeName] The name of the volume
  const CapacityPoolSnapshotArgs({
    required this.accountName,
    this.location,
    required this.poolName,
    required this.resourceGroupName,
    this.snapshotName,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'location': ?location,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'snapshotName': ?snapshotName,
      'volumeName': volumeName,
    };
  }

  factory CapacityPoolSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return CapacityPoolSnapshotArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      snapshotName: (() { final guardedValue = map['snapshotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}
