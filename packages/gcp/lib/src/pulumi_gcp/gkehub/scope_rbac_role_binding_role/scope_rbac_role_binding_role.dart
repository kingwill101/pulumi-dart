// ignore_for_file: unused_element, unnecessary_cast

class ScopeRbacRoleBindingRole {
  /// CustomRole is the custom Kubernetes ClusterRole to be used. The custom role format must be allowlisted in the rbacrolebindingactuation feature and RFC 1123 compliant.
  final String? customRole;

  /// PredefinedRole is an ENUM representation of the default Kubernetes Roles
  /// Possible values are: `UNKNOWN`, `ADMIN`, `EDIT`, `VIEW`.
  final String? predefinedRole;

  ScopeRbacRoleBindingRole({
    this.customRole,
    this.predefinedRole,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customRoleValue = customRole;
    if (customRoleValue != null) {
      map['customRole'] = customRoleValue;
    }
    final predefinedRoleValue = predefinedRole;
    if (predefinedRoleValue != null) {
      map['predefinedRole'] = predefinedRoleValue;
    }
    return map;
  }

  factory ScopeRbacRoleBindingRole.fromMap(Map<String, dynamic> map) {
    return ScopeRbacRoleBindingRole(
      customRole:
          map['customRole'] == null ? null : map['customRole'] as String,
      predefinedRole: map['predefinedRole'] == null
          ? null
          : map['predefinedRole'] as String,
    );
  }
}
