// ignore_for_file: unused_element, unnecessary_cast

class GetGroupTransitiveMembershipsMembershipRole {
  /// The name of the TransitiveMembershipRole. One of OWNER, MANAGER, MEMBER.
  final String role;

  GetGroupTransitiveMembershipsMembershipRole({
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['role'] = role;
    return map;
  }

  factory GetGroupTransitiveMembershipsMembershipRole.fromMap(
      Map<String, dynamic> map) {
    return GetGroupTransitiveMembershipsMembershipRole(
      role: map['role'] as String,
    );
  }
}
