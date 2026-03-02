// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'creation_data.dart';

/// {@template pulumi_containerservice_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_containerservice_snapshot_args_doc}
class SnapshotArgs {
  /// CreationData to be used to specify the source agent pool resource ID to create this snapshot.
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

  /// Creates a new [SnapshotArgs].
  /// [creationData] CreationData to be used to specify the source agent pool resource ID to create this snapshot.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [snapshotType] The type of a snapshot. The default is NodePool.
  /// [tags] Resource tags.
  SnapshotArgs({
    this.creationData,
    this.location,
    required this.resourceGroupName,
    this.resourceName,
    this.snapshotType,
    this.tags,
  });

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

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      creationData: map['creationData'] == null ? null : (CreationData.fromMap((map['creationData'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      snapshotType: map['snapshotType'] == null ? null : (map['snapshotType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

