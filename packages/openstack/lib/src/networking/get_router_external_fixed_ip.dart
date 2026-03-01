// ignore_for_file: unused_element, unnecessary_cast


class GetRouterExternalFixedIp {
  /// The IP address to set on the router.
  final String? ipAddress;
  /// Subnet in which the fixed IP belongs to.
  final String? subnetId;

  /// Creates a new [GetRouterExternalFixedIp].
  /// [ipAddress] The IP address to set on the router.
  /// [subnetId] Subnet in which the fixed IP belongs to.
  GetRouterExternalFixedIp({
    this.ipAddress,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'subnetId': ?subnetId,
    };
  }

  factory GetRouterExternalFixedIp.fromMap(Map<String, dynamic> map) {
    return GetRouterExternalFixedIp(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

