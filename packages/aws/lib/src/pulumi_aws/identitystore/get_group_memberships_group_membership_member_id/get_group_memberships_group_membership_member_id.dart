// ignore_for_file: unused_element, unnecessary_cast

class GetGroupMembershipsGroupMembershipMemberId {
  /// User identifier of the group member.
  final String userId;

  GetGroupMembershipsGroupMembershipMemberId({
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    return map;
  }

  factory GetGroupMembershipsGroupMembershipMemberId.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMembershipsGroupMembershipMemberId(
      userId: map['userId'] as String,
    );
  }
}
