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
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? snapshotName,
    required pulumi.Output<String> source,
  }) :
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      source = pulumi.Input.asInput<String>(source);

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
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
      source: pulumi.Output.create<String>(map['source'] as String),
    );
  }
}

