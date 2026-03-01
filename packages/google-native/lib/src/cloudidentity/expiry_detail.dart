// ignore_for_file: unused_element, unnecessary_cast

/// The `MembershipRole` expiry details.
class ExpiryDetail {
  /// The time at which the `MembershipRole` will expire.
  final String? expireTime;

  /// Creates a new [ExpiryDetail].
  /// [expireTime] The time at which the `MembershipRole` will expire.
  ExpiryDetail({this.expireTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expireTime': ?expireTime};
  }

  factory ExpiryDetail.fromMap(Map<String, dynamic> map) {
    return ExpiryDetail(
      expireTime: map['expireTime'] == null
          ? null
          : map['expireTime'] as String,
    );
  }
}
