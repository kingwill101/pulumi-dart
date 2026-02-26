// ignore_for_file: unused_element, unnecessary_cast

class ScopeRbacRoleBindingState {
  /// (Output)
  /// Code describes the state of a RBAC Role Binding resource.
  final String? code;

  ScopeRbacRoleBindingState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    return map;
  }

  factory ScopeRbacRoleBindingState.fromMap(Map<String, dynamic> map) {
    return ScopeRbacRoleBindingState(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}
