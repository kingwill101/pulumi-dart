// ignore_for_file: unused_element, unnecessary_cast

/// The `MembershipRole` expiry details.
class ExpiryDetailResponseCloudidentityV1beta1 {
  /// The time at which the `MembershipRole` will expire.
  final String expireTime;

  /// Creates a new [ExpiryDetailResponseCloudidentityV1beta1].
  /// [expireTime] The time at which the `MembershipRole` will expire.
  ExpiryDetailResponseCloudidentityV1beta1({required this.expireTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expireTime': expireTime};
  }

  factory ExpiryDetailResponseCloudidentityV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExpiryDetailResponseCloudidentityV1beta1(
      expireTime: map['expireTime'] as String,
    );
  }
}
