// ignore_for_file: unused_element, unnecessary_cast


class GetFeatureSpecRbacrolebindingactuation {
  /// The list of allowed custom roles (ClusterRoles). If a custom role is not part of this list, it cannot be used in a fleet scope RBACRoleBinding. If a custom role in this list is in use, it cannot be removed from the list until the scope RBACRolebindings using it are deleted.
  final List<String> allowedCustomRoles;

  /// Creates a new [GetFeatureSpecRbacrolebindingactuation].
  /// [allowedCustomRoles] The list of allowed custom roles (ClusterRoles). If a custom role is not part of this list, it cannot be used in a fleet scope RBACRoleBinding. If a custom role in this list is in use, it cannot be removed from the list until the scope RBACRolebindings using it are deleted.
  GetFeatureSpecRbacrolebindingactuation({
    required this.allowedCustomRoles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCustomRoles': allowedCustomRoles,
    };
  }

  factory GetFeatureSpecRbacrolebindingactuation.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpecRbacrolebindingactuation(
      allowedCustomRoles: (map['allowedCustomRoles'] as List).cast<String>(),
    );
  }
}

