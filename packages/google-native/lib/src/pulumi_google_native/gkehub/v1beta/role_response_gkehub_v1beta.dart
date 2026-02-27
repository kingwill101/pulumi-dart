// ignore_for_file: unused_element, unnecessary_cast

/// Role is the type for Kubernetes roles
class RoleResponseGkehubV1beta {
  /// predefined_role is the Kubernetes default role to use
  final String predefinedRole;

  RoleResponseGkehubV1beta({
    required this.predefinedRole,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predefinedRole'] = predefinedRole;
    return map;
  }

  factory RoleResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return RoleResponseGkehubV1beta(
      predefinedRole: map['predefinedRole'] as String,
    );
  }
}
