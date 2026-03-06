// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of an Access Control Rule RoleAssignment.
class AccessControlRulesRoleAssignmentResponse {
  /// A list of identities that can access the privileges defined by the role.
  final pulumi.Input<List<String>> identities;
  /// The name of the role.
  final pulumi.Input<String> role;

  /// Creates a new [AccessControlRulesRoleAssignmentResponse].
  /// [identities] A list of identities that can access the privileges defined by the role.
  /// [role] The name of the role.
  const AccessControlRulesRoleAssignmentResponse({
    required this.identities,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': identities,
      'role': role,
    };
  }

  factory AccessControlRulesRoleAssignmentResponse.fromMap(Map<String, dynamic> map) {
    return AccessControlRulesRoleAssignmentResponse(
      identities: pulumi.Input.fromValue((map['identities'] as List).cast<String>()),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}

