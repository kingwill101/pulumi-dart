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
  const GetEcsSnapshotGroupsGroup({
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
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      snapshotGroupId: pulumi.Input.fromValue(map['snapshotGroupId'] as String),
      snapshotGroupName: pulumi.Input.fromValue(map['snapshotGroupName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

