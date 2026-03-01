// ignore_for_file: unused_element, unnecessary_cast

class GetGroupTransitiveMembershipsMembershipRole {
  /// The name of the TransitiveMembershipRole. One of OWNER, MANAGER, MEMBER.
  final String role;

  /// Creates a new [GetGroupTransitiveMembershipsMembershipRole].
  /// [role] The name of the TransitiveMembershipRole. One of OWNER, MANAGER, MEMBER.
  GetGroupTransitiveMembershipsMembershipRole({required this.role});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'role': role};
  }

  factory GetGroupTransitiveMembershipsMembershipRole.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGroupTransitiveMembershipsMembershipRole(
      role: map['role'] as String,
    );
  }
}
