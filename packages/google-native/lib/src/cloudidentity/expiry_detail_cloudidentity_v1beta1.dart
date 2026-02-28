// ignore_for_file: unused_element, unnecessary_cast

/// The `MembershipRole` expiry details.
class ExpiryDetailCloudidentityV1beta1 {
  /// The time at which the `MembershipRole` will expire.
  final String? expireTime;

  /// Creates a new [ExpiryDetailCloudidentityV1beta1].
  /// [expireTime] The time at which the `MembershipRole` will expire.
  ExpiryDetailCloudidentityV1beta1({
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

  factory ExpiryDetailCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return ExpiryDetailCloudidentityV1beta1(
      expireTime:
          map['expireTime'] == null ? null : map['expireTime'] as String,
    );
  }
}
