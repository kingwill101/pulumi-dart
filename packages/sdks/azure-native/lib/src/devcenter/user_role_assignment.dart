// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mapping of user object ID to role assignments.
class UserRoleAssignment {
  /// A map of roles to assign to the parent user.
  final pulumi.Input<List<String>>? roles;

  /// Creates a new [UserRoleAssignment].
  /// [roles] A map of roles to assign to the parent user.
  const UserRoleAssignment({
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': ?roles,
    };
  }

  factory UserRoleAssignment.fromMap(Map<String, dynamic> map) {
    return UserRoleAssignment(
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
