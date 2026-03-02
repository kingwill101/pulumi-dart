// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsSnapshotGroupsGroup {
  /// The description of the snapshot-consistent group.
  final pulumi.Input<String> description;
  /// The ID of the Snapshot Group.
  final pulumi.Input<String> id;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The ID of the resource group to which the snapshot consistency group belongs.
  final pulumi.Input<String> resourceGroupId;
  /// The first ID of the resource.
  final pulumi.Input<String> snapshotGroupId;
  /// The name of the snapshot-consistent group.
  final pulumi.Input<String> snapshotGroupName;
  /// The status of the resource.
  final pulumi.Input<String> status;
  /// List of label key-value pairs.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEcsSnapshotGroupsGroup].
  /// [description] The description of the snapshot-consistent group.
  /// [id] The ID of the Snapshot Group.
  /// [instanceId] The ID of the instance.
  /// [resourceGroupId] The ID of the resource group to which the snapshot consistency group belongs.
  /// [snapshotGroupId] The first ID of the resource.
  /// [snapshotGroupName] The name of the snapshot-consistent group.
  /// [status] The status of the resource.
  /// [tags] List of label key-value pairs.
  GetEcsSnapshotGroupsGroup({
    required this.description,
    required this.id,
    required this.instanceId,
    required this.resourceGroupId,
    required this.snapshotGroupId,
    required this.snapshotGroupName,
    required this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'instanceId': instanceId,
      'resourceGroupId': resourceGroupId,
      'snapshotGroupId': snapshotGroupId,
      'snapshotGroupName': snapshotGroupName,
      'status': status,
      'tags': ?tags,
    };
  }

  factory GetEcsSnapshotGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetEcsSnapshotGroupsGroup(
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      snapshotGroupId: (map['snapshotGroupId'] as String).input(),
      snapshotGroupName: (map['snapshotGroupName'] as String).input(),
      status: (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

