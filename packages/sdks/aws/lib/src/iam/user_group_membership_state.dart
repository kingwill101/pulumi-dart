// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserGroupMembership resources.
class UserGroupMembershipState {
  /// A list of IAM Groups to add the user to
  final pulumi.Input<List<String>>? groups;
  /// The name of the IAM User to add to groups
  final pulumi.Input<String>? user;

  /// Creates a new [UserGroupMembershipState].
  /// [groups] A list of IAM Groups to add the user to
  /// [user] The name of the IAM User to add to groups
  UserGroupMembershipState({
    pulumi.Output<List<String>>? groups,
    pulumi.Output<String>? user,
  }) :
      groups = pulumi.Input.asOptionalInput<List<String>>(groups),
      user = pulumi.Input.asOptionalInput<String>(user);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': ?groups,
      'user': ?user,
    };
  }

  factory UserGroupMembershipState.fromMap(Map<String, dynamic> map) {
    return UserGroupMembershipState(
      groups: map['groups'] == null ? null : pulumi.Output.create<List<String>>((map['groups'] as List).cast<String>()),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

