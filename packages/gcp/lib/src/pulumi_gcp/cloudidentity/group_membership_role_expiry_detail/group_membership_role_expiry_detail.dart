// ignore_for_file: unused_element, unnecessary_cast

class GroupMembershipRoleExpiryDetail {
  /// The time at which the MembershipRole will expire.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String expireTime;

  GroupMembershipRoleExpiryDetail({
    required this.expireTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expireTime'] = expireTime;
    return map;
  }

  factory GroupMembershipRoleExpiryDetail.fromMap(Map<String, dynamic> map) {
    return GroupMembershipRoleExpiryDetail(
      expireTime: map['expireTime'] as String,
    );
  }
}
