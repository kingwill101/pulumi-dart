// ignore_for_file: unused_element, unnecessary_cast

/// RBACRoleBindingLifecycleState describes the state of a RbacRoleBinding resource.
class RBACRoleBindingLifecycleStateResponseGkehubV1beta {
  /// The current state of the rbacrolebinding resource.
  final String code;

  RBACRoleBindingLifecycleStateResponseGkehubV1beta({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory RBACRoleBindingLifecycleStateResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return RBACRoleBindingLifecycleStateResponseGkehubV1beta(
      code: map['code'] as String,
    );
  }
}
