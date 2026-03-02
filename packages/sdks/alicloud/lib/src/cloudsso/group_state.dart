// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// The Description of the group. The description can be up to `1024` characters long.
  final pulumi.Input<String>? description;
  /// The ID of the Directory.
  final pulumi.Input<String>? directoryId;
  /// The GroupId of the group.
  final pulumi.Input<String>? groupId;
  /// The Name of the group. The name must be `1` to `128` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-).
  final pulumi.Input<String>? groupName;

  /// Creates a new [GroupState].
  /// [description] The Description of the group. The description can be up to `1024` characters long.
  /// [directoryId] The ID of the Directory.
  /// [groupId] The GroupId of the group.
  /// [groupName] The Name of the group. The name must be `1` to `128` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-).
  GroupState({
    this.description,
    this.directoryId,
    this.groupId,
    this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'directoryId': ?directoryId,
      'groupId': ?groupId,
      'groupName': ?groupName,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      directoryId: map['directoryId'] == null ? null : (map['directoryId']! as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName']! as String).input(),
    );
  }
}

