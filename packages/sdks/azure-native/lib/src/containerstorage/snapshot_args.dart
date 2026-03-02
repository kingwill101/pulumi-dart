// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerstorage_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_containerstorage_snapshot_args_doc}
class SnapshotArgs {
  /// Pool Object
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Volume Snapshot Resource
  final pulumi.Input<String>? snapshotName;
  /// Reference to the source volume
  final pulumi.Input<String> source;

  /// Creates a new [SnapshotArgs].
  /// [poolName] Pool Object
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotName] Volume Snapshot Resource
  /// [source] Reference to the source volume
  SnapshotArgs({
    required this.poolName,
    required this.resourceGroupName,
    this.snapshotName,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'snapshotName': ?snapshotName,
      'source': source,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      poolName: (map['poolName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      snapshotName: map['snapshotName'] == null ? null : (map['snapshotName'] as String).input(),
      source: (map['source'] as String).input(),
    );
  }
}

