// ignore_for_file: unused_element, unnecessary_cast

/// The `MembershipRole` expiry details.
class ExpiryDetailResponse {
  /// The time at which the `MembershipRole` will expire.
  final String expireTime;

  ExpiryDetailResponse({
    required this.expireTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expireTime'] = expireTime;
    return map;
  }

  factory ExpiryDetailResponse.fromMap(Map<String, dynamic> map) {
    return ExpiryDetailResponse(
      expireTime: map['expireTime'] as String,
    );
  }
}
