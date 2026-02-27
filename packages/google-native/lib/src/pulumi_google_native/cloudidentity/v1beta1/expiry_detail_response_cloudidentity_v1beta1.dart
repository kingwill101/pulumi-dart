// ignore_for_file: unused_element, unnecessary_cast

/// The `MembershipRole` expiry details.
class ExpiryDetailResponseCloudidentityV1beta1 {
  /// The time at which the `MembershipRole` will expire.
  final String expireTime;

  ExpiryDetailResponseCloudidentityV1beta1({
    required this.expireTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expireTime'] = expireTime;
    return map;
  }

  factory ExpiryDetailResponseCloudidentityV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ExpiryDetailResponseCloudidentityV1beta1(
      expireTime: map['expireTime'] as String,
    );
  }
}
