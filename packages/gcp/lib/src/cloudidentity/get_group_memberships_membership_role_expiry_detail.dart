// ignore_for_file: unused_element, unnecessary_cast


class GetGroupMembershipsMembershipRoleExpiryDetail {
  /// The time at which the MembershipRole will expire.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  ///
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String expireTime;

  /// Creates a new [GetGroupMembershipsMembershipRoleExpiryDetail].
  /// [expireTime] The time at which the MembershipRole will expire.
  GetGroupMembershipsMembershipRoleExpiryDetail({
    required this.expireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': expireTime,
    };
  }

  factory GetGroupMembershipsMembershipRoleExpiryDetail.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsMembershipRoleExpiryDetail(
      expireTime: map['expireTime'] as String,
    );
  }
}

