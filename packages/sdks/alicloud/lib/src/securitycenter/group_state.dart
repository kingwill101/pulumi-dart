// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// GroupId.
  final pulumi.Input<String>? groupId;
  /// GroupName.
  final pulumi.Input<String>? groupName;

  /// Creates a new [GroupState].
  /// [groupId] GroupId.
  /// [groupName] GroupName.
  GroupState({
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? groupName,
  }) :
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      groupName = pulumi.Input.asOptionalInput<String>(groupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'groupName': ?groupName,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
    );
  }
}

