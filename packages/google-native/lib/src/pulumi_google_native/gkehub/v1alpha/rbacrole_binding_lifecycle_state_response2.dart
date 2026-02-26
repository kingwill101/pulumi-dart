// ignore_for_file: unused_element, unnecessary_cast

/// RBACRoleBindingLifecycleState describes the state of a RbacRoleBinding resource.
class RBACRoleBindingLifecycleStateResponse2 {
  /// The current state of the rbacrolebinding resource.
  final String code;

  RBACRoleBindingLifecycleStateResponse2({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory RBACRoleBindingLifecycleStateResponse2.fromMap(
      Map<String, dynamic> map) {
    return RBACRoleBindingLifecycleStateResponse2(
      code: map['code'] as String,
    );
  }
}
