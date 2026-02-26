// ignore_for_file: unused_element, unnecessary_cast

import 'role_predefined_role3.dart';

/// Role is the type for Kubernetes roles
class Role3 {
  /// predefined_role is the Kubernetes default role to use
  final RolePredefinedRole3? predefinedRole;

  Role3({
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

  factory Role3.fromMap(Map<String, dynamic> map) {
    return Role3(
      predefinedRole: map['predefinedRole'] == null
          ? null
          : RolePredefinedRole3.fromValue(map['predefinedRole'] as String),
    );
  }
}
