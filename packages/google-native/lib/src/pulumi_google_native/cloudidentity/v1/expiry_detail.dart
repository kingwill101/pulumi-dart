// ignore_for_file: unused_element, unnecessary_cast

/// The `MembershipRole` expiry details.
class ExpiryDetail {
  /// The time at which the `MembershipRole` will expire.
  final String? expireTime;

  ExpiryDetail({
    this.expireTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
    }
    return map;
  }

  factory ExpiryDetail.fromMap(Map<String, dynamic> map) {
    return ExpiryDetail(
      expireTime:
          map['expireTime'] == null ? null : map['expireTime'] as String,
    );
  }
}
