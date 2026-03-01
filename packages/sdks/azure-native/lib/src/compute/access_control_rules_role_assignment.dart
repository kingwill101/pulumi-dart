// ignore_for_file: unused_element, unnecessary_cast


/// The properties of an Access Control Rule RoleAssignment.
class AccessControlRulesRoleAssignment {
  /// A list of identities that can access the privileges defined by the role.
  final List<String> identities;
  /// The name of the role.
  final String role;

  /// Creates a new [AccessControlRulesRoleAssignment].
  /// [identities] A list of identities that can access the privileges defined by the role.
  /// [role] The name of the role.
  AccessControlRulesRoleAssignment({
    required this.identities,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': identities,
      'role': role,
    };
  }

  factory AccessControlRulesRoleAssignment.fromMap(Map<String, dynamic> map) {
    return AccessControlRulesRoleAssignment(
      identities: (map['identities'] as List).cast<String>(),
      role: map['role'] as String,
    );
  }
}

