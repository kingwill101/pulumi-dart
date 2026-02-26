// ignore_for_file: unused_element, unnecessary_cast

class MembershipRbacRoleBindingState {
  /// (Output)
  /// Code describes the state of a RBAC Role Binding resource.
  final String? code;

  MembershipRbacRoleBindingState({
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

  factory MembershipRbacRoleBindingState.fromMap(Map<String, dynamic> map) {
    return MembershipRbacRoleBindingState(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}
