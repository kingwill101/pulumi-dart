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
  GroupState({this.groupId, this.groupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'groupId': ?groupId, 'groupName': ?groupName};
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
