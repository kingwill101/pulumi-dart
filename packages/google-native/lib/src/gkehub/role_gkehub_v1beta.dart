// ignore_for_file: unused_element, unnecessary_cast

import 'role_predefined_role_gkehub_v1beta.dart';

/// Role is the type for Kubernetes roles
class RoleGkehubV1beta {
  /// predefined_role is the Kubernetes default role to use
  final RolePredefinedRoleGkehubV1beta? predefinedRole;

  /// Creates a new [RoleGkehubV1beta].
  /// [predefinedRole] predefined_role is the Kubernetes default role to use
  RoleGkehubV1beta({this.predefinedRole});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedRole': ?predefinedRole == null ? null : predefinedRole!.value,
    };
  }

  factory RoleGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return RoleGkehubV1beta(
      predefinedRole: map['predefinedRole'] == null
          ? null
          : RolePredefinedRoleGkehubV1beta.fromValue(
              map['predefinedRole'] as String,
            ),
    );
  }
}
