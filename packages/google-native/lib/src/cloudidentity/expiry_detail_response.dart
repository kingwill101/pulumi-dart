// ignore_for_file: unused_element, unnecessary_cast

/// The `MembershipRole` expiry details.
class ExpiryDetailResponse {
  /// The time at which the `MembershipRole` will expire.
  final String expireTime;

  /// Creates a new [ExpiryDetailResponse].
  /// [expireTime] The time at which the `MembershipRole` will expire.
  ExpiryDetailResponse({required this.expireTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expireTime': expireTime};
  }

  factory ExpiryDetailResponse.fromMap(Map<String, dynamic> map) {
    return ExpiryDetailResponse(expireTime: map['expireTime'] as String);
  }
}
