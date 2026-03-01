// ignore_for_file: unused_element, unnecessary_cast


class MembershipRbacRoleBindingState {
  /// (Output)
  /// Code describes the state of a RBAC Role Binding resource.
  final String? code;

  /// Creates a new [MembershipRbacRoleBindingState].
  /// [code] (Output)
  MembershipRbacRoleBindingState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory MembershipRbacRoleBindingState.fromMap(Map<String, dynamic> map) {
    return MembershipRbacRoleBindingState(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}

