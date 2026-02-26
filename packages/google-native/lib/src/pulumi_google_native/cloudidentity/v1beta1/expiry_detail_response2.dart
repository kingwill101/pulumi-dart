// ignore_for_file: unused_element, unnecessary_cast

/// The `MembershipRole` expiry details.
class ExpiryDetailResponse2 {
  /// The time at which the `MembershipRole` will expire.
  final String expireTime;

  ExpiryDetailResponse2({
    required this.expireTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expireTime'] = expireTime;
    return map;
  }

  factory ExpiryDetailResponse2.fromMap(Map<String, dynamic> map) {
    return ExpiryDetailResponse2(
      expireTime: map['expireTime'] as String,
    );
  }
}
