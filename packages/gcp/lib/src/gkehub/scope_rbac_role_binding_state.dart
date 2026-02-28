// ignore_for_file: unused_element, unnecessary_cast


class ScopeRbacRoleBindingState {
  /// (Output)
  /// Code describes the state of a RBAC Role Binding resource.
  final String? code;

  /// Creates a new [ScopeRbacRoleBindingState].
  /// [code] (Output)
  ScopeRbacRoleBindingState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory ScopeRbacRoleBindingState.fromMap(Map<String, dynamic> map) {
    return ScopeRbacRoleBindingState(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}

