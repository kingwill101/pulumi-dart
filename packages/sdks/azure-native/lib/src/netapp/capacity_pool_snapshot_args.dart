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
  final pulumi.Input<String>? location;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the snapshot
  final pulumi.Input<String>? snapshotName;
  /// The name of the volume
  final pulumi.Input<String> volumeName;

  /// Creates a new [CapacityPoolSnapshotArgs].
  /// [accountName] The name of the NetApp account
  /// [location] Resource location
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotName] The name of the snapshot
  /// [volumeName] The name of the volume
  CapacityPoolSnapshotArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? snapshotName,
    required pulumi.Output<String> volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
      volumeName: pulumi.Output.create<String>(map['volumeName'] as String),
    );
  }
}

