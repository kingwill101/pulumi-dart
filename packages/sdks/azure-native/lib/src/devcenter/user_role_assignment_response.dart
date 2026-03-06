// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_role_response.dart';

/// Mapping of user object ID to role assignments.
class UserRoleAssignmentResponse {
  /// A map of roles to assign to the parent user.
  final pulumi.Input<Map<String, EnvironmentRoleResponse>>? roles;

  /// Creates a new [UserRoleAssignmentResponse].
  /// [roles] A map of roles to assign to the parent user.
  const UserRoleAssignmentResponse({
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': ?pulumi.Input.mapOptionalInputValue<Map<String, EnvironmentRoleResponse>, Map<String, Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeMapValues<EnvironmentRoleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserRoleAssignmentResponse.fromMap(Map<String, dynamic> map) {
    return UserRoleAssignmentResponse(
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<EnvironmentRoleResponse>(guardedValue, (value) => EnvironmentRoleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

