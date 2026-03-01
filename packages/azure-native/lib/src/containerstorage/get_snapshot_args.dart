// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerstorage_get_snapshot_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_containerstorage_get_snapshot_args_doc}
class GetSnapshotArgs {
  /// Pool Object
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Volume Snapshot Resource
  final pulumi.Input<String> snapshotName;

  /// Creates a new [GetSnapshotArgs].
  /// [poolName] Pool Object
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotName] Volume Snapshot Resource
  GetSnapshotArgs({
    required String poolName,
    required String resourceGroupName,
    required String snapshotName,
  }) :
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      snapshotName = pulumi.Input.asInput<String>(snapshotName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'snapshotName': snapshotName,
    };
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      poolName: map['poolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      snapshotName: map['snapshotName'] as String,
    );
  }
}

