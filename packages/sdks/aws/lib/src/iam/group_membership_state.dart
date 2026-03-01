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
  GroupMembershipState({
    pulumi.Output<String>? group,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? users,
  }) :
      group = pulumi.Input.asOptionalInput<String>(group),
      name = pulumi.Input.asOptionalInput<String>(name),
      users = pulumi.Input.asOptionalInput<List<String>>(users);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'name': ?name,
      'users': ?users,
    };
  }

  factory GroupMembershipState.fromMap(Map<String, dynamic> map) {
    return GroupMembershipState(
      group: map['group'] == null ? null : pulumi.Output.create<String>(map['group'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      users: map['users'] == null ? null : pulumi.Output.create<List<String>>((map['users'] as List).cast<String>()),
    );
  }
}

