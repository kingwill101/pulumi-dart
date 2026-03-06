// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupsGroup {
  /// The Created Time of the Directory.
  final pulumi.Input<String> createTime;
  /// The Description of the Directory.
  final pulumi.Input<String> description;
  /// The ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// The Group ID of the group.
  final pulumi.Input<String> groupId;
  /// The Name of the group.
  final pulumi.Input<String> groupName;
  /// The ID of the Group.
  final pulumi.Input<String> id;
  /// The Provision Type of the Group. Valid values: `Manual`, `Synchronized`.
  final pulumi.Input<String> provisionType;

  /// Creates a new [GetGroupsGroup].
  /// [createTime] The Created Time of the Directory.
  /// [description] The Description of the Directory.
  /// [directoryId] The ID of the Directory.
  /// [groupId] The Group ID of the group.
  /// [groupName] The Name of the group.
  /// [id] The ID of the Group.
  /// [provisionType] The Provision Type of the Group. Valid values: `Manual`, `Synchronized`.
  const GetGroupsGroup({
    required this.createTime,
    required this.description,
    required this.directoryId,
    required this.groupId,
    required this.groupName,
    required this.id,
    required this.provisionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'directoryId': directoryId,
      'groupId': groupId,
      'groupName': groupName,
      'id': id,
      'provisionType': provisionType,
    };
  }

  factory GetGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroup(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      provisionType: pulumi.Input.fromValue(map['provisionType'] as String),
    );
  }
}

