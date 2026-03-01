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
    pulumi.Output<String>? description,
    pulumi.Output<String>? directoryId,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? groupName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      groupName = pulumi.Input.asOptionalInput<String>(groupName);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
    );
  }
}

