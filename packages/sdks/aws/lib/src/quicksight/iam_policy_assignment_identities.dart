// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IamPolicyAssignmentIdentities {
  /// Array of Quicksight group names to assign the policy to.
  final pulumi.Input<List<String>>? groups;
  /// Array of Quicksight user names to assign the policy to.
  final pulumi.Input<List<String>>? users;

  /// Creates a new [IamPolicyAssignmentIdentities].
  /// [groups] Array of Quicksight group names to assign the policy to.
  /// [users] Array of Quicksight user names to assign the policy to.
  IamPolicyAssignmentIdentities({
    this.groups,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': ?groups,
      'users': ?users,
    };
  }

  factory IamPolicyAssignmentIdentities.fromMap(Map<String, dynamic> map) {
    return IamPolicyAssignmentIdentities(
      groups: map['groups'] == null ? null : ((map['groups'] as List).cast<String>()).input(),
      users: map['users'] == null ? null : ((map['users'] as List).cast<String>()).input(),
    );
  }
}

