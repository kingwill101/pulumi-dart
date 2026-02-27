// ignore_for_file: unused_element, unnecessary_cast

import 'role_predefined_role_gkehub_v1alpha.dart';

/// Role is the type for Kubernetes roles
class RoleGkehubV1alpha {
  /// predefined_role is the Kubernetes default role to use
  final RolePredefinedRoleGkehubV1alpha? predefinedRole;

  RoleGkehubV1alpha({
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

  factory RoleGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return RoleGkehubV1alpha(
      predefinedRole: map['predefinedRole'] == null
          ? null
          : RolePredefinedRoleGkehubV1alpha.fromValue(
              map['predefinedRole'] as String),
    );
  }
}
