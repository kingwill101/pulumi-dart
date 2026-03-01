// ignore_for_file: unused_element, unnecessary_cast

import 'role_predefined_role_gkehub_v1alpha.dart';

/// Role is the type for Kubernetes roles
class RoleGkehubV1alpha {
  /// predefined_role is the Kubernetes default role to use
  final RolePredefinedRoleGkehubV1alpha? predefinedRole;

  /// Creates a new [RoleGkehubV1alpha].
  /// [predefinedRole] predefined_role is the Kubernetes default role to use
  RoleGkehubV1alpha({this.predefinedRole});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedRole': ?predefinedRole == null ? null : predefinedRole!.value,
    };
  }

  factory RoleGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return RoleGkehubV1alpha(
      predefinedRole: map['predefinedRole'] == null
          ? null
          : RolePredefinedRoleGkehubV1alpha.fromValue(
              map['predefinedRole'] as String,
            ),
    );
  }
}
