// ignore_for_file: unused_element, unnecessary_cast

/// RBACRoleBindingLifecycleState describes the state of a RbacRoleBinding resource.
class RBACRoleBindingLifecycleStateResponse {
  /// The current state of the rbacrolebinding resource.
  final String code;

  RBACRoleBindingLifecycleStateResponse({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory RBACRoleBindingLifecycleStateResponse.fromMap(
      Map<String, dynamic> map) {
    return RBACRoleBindingLifecycleStateResponse(
      code: map['code'] as String,
    );
  }
}
