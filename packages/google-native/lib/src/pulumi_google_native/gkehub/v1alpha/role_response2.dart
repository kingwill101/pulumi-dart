// ignore_for_file: unused_element, unnecessary_cast

/// Role is the type for Kubernetes roles
class RoleResponse2 {
  /// predefined_role is the Kubernetes default role to use
  final String predefinedRole;

  RoleResponse2({
    required this.predefinedRole,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predefinedRole'] = predefinedRole;
    return map;
  }

  factory RoleResponse2.fromMap(Map<String, dynamic> map) {
    return RoleResponse2(
      predefinedRole: map['predefinedRole'] as String,
    );
  }
}
