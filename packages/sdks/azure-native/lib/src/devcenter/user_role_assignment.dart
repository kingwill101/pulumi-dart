// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mapping of user object ID to role assignments.
class UserRoleAssignment {
  /// A map of roles to assign to the parent user.
  final pulumi.Input<List<String>>? roles;

  /// Creates a new [UserRoleAssignment].
  /// [roles] A map of roles to assign to the parent user.
  UserRoleAssignment({
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': ?roles,
    };
  }

  factory UserRoleAssignment.fromMap(Map<String, dynamic> map) {
    return UserRoleAssignment(
      roles: map['roles'] == null ? null : ((map['roles']! as List).cast<String>()).input(),
    );
  }
}

