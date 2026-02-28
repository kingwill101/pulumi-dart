// ignore_for_file: unused_element, unnecessary_cast


class MembershipRbacRoleBindingRole {
  /// PredefinedRole is an ENUM representation of the default Kubernetes Roles
  /// Possible values are: `UNKNOWN`, `ADMIN`, `EDIT`, `VIEW`, `ANTHOS_SUPPORT`.
  final String predefinedRole;

  /// Creates a new [MembershipRbacRoleBindingRole].
  /// [predefinedRole] PredefinedRole is an ENUM representation of the default Kubernetes Roles
  MembershipRbacRoleBindingRole({
    required this.predefinedRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedRole': predefinedRole,
    };
  }

  factory MembershipRbacRoleBindingRole.fromMap(Map<String, dynamic> map) {
    return MembershipRbacRoleBindingRole(
      predefinedRole: map['predefinedRole'] as String,
    );
  }
}

