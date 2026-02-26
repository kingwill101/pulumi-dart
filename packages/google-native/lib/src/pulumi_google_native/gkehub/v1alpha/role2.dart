// ignore_for_file: unused_element, unnecessary_cast

import 'role_predefined_role2.dart';

/// Role is the type for Kubernetes roles
class Role2 {
  /// predefined_role is the Kubernetes default role to use
  final RolePredefinedRole2? predefinedRole;

  Role2({
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

  factory Role2.fromMap(Map<String, dynamic> map) {
    return Role2(
      predefinedRole: map['predefinedRole'] == null
          ? null
          : RolePredefinedRole2.fromValue(map['predefinedRole'] as String),
    );
  }
}
