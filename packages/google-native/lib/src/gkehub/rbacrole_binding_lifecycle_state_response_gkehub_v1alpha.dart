// ignore_for_file: unused_element, unnecessary_cast

/// RBACRoleBindingLifecycleState describes the state of a RbacRoleBinding resource.
class RBACRoleBindingLifecycleStateResponseGkehubV1alpha {
  /// The current state of the rbacrolebinding resource.
  final String code;

  /// Creates a new [RBACRoleBindingLifecycleStateResponseGkehubV1alpha].
  /// [code] The current state of the rbacrolebinding resource.
  RBACRoleBindingLifecycleStateResponseGkehubV1alpha({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory RBACRoleBindingLifecycleStateResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return RBACRoleBindingLifecycleStateResponseGkehubV1alpha(
      code: map['code'] as String,
    );
  }
}
