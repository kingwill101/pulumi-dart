// ignore_for_file: unused_element, unnecessary_cast


class GetEcsSnapshotGroupsGroup {
  /// The description of the snapshot-consistent group.
  final String description;
  /// The ID of the Snapshot Group.
  final String id;
  /// The ID of the instance.
  final String instanceId;
  /// The ID of the resource group to which the snapshot consistency group belongs.
  final String resourceGroupId;
  /// The first ID of the resource.
  final String snapshotGroupId;
  /// The name of the snapshot-consistent group.
  final String snapshotGroupName;
  /// The status of the resource.
  final String status;
  /// List of label key-value pairs.
  final Map<String, String>? tags;

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
      description: map['description'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      snapshotGroupId: map['snapshotGroupId'] as String,
      snapshotGroupName: map['snapshotGroupName'] as String,
      status: map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

