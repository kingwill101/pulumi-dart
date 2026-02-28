// ignore_for_file: unused_element, unnecessary_cast

import 'role_predefined_role.dart';

/// Role is the type for Kubernetes roles
class Role {
  /// predefined_role is the Kubernetes default role to use
  final RolePredefinedRole? predefinedRole;

  /// Creates a new [Role].
  /// [predefinedRole] predefined_role is the Kubernetes default role to use
  Role({
    this.predefinedRole,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final predefinedRoleValue = predefinedRole;
    if (predefinedRoleValue != null) {
      map['predefinedRole'] = predefinedRoleValue.value;
    }
    return map;
  }

  factory Role.fromMap(Map<String, dynamic> map) {
    return Role(
      predefinedRole: map['predefinedRole'] == null
          ? null
          : RolePredefinedRole.fromValue(map['predefinedRole'] as String),
    );
  }
}
