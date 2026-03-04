// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupMembership resources.
class GroupMembershipState {
  /// The IAM Group name to attach the list of `users` to
  final pulumi.Input<String>? group;

  /// The name to identify the Group Membership
  final pulumi.Input<String>? name;

  /// A list of IAM User names to associate with the Group
  final pulumi.Input<List<String>>? users;

  /// Creates a new [GroupMembershipState].
  /// [group] The IAM Group name to attach the list of `users` to
  /// [name] The name to identify the Group Membership
  /// [users] A list of IAM User names to associate with the Group
  GroupMembershipState({this.group, this.name, this.users});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'group': ?group, 'name': ?name, 'users': ?users};
  }

  factory GroupMembershipState.fromMap(Map<String, dynamic> map) {
    return GroupMembershipState(
      group: (() {
        final guardedValue = map['group'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      users: (() {
        final guardedValue = map['users'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
