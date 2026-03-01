// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'creation_data.dart';

/// {@template pulumi_containerservice_managed_cluster_snapshot_args_doc}
/// The set of arguments for ManagedClusterSnapshot.
/// {@endtemplate}
/// {@macro pulumi_containerservice_managed_cluster_snapshot_args_doc}
class ManagedClusterSnapshotArgs {
  /// CreationData to be used to specify the source resource ID to create this snapshot.
  final pulumi.Input<CreationData>? creationData;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String>? resourceName;
  /// The type of a snapshot. The default is NodePool.
  final pulumi.Input<String>? snapshotType;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedClusterSnapshotArgs].
  /// [creationData] CreationData to be used to specify the source resource ID to create this snapshot.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [snapshotType] The type of a snapshot. The default is NodePool.
  /// [tags] Resource tags.
  ManagedClusterSnapshotArgs({
    pulumi.Output<CreationData>? creationData,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    pulumi.Output<String>? snapshotType,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      creationData = pulumi.Input.asOptionalInput<CreationData>(creationData),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      snapshotType = pulumi.Input.asOptionalInput<String>(snapshotType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationData': ?pulumi.Input.mapOptionalInputValue<CreationData, Map<String, dynamic>>(creationData, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'snapshotType': ?snapshotType,
      'tags': ?tags,
    };
  }

  factory ManagedClusterSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterSnapshotArgs(
      creationData: map['creationData'] == null ? null : pulumi.Output.create<CreationData>(CreationData.fromMap((map['creationData'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      snapshotType: map['snapshotType'] == null ? null : pulumi.Output.create<String>(map['snapshotType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

