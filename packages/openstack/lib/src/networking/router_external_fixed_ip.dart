// ignore_for_file: unused_element, unnecessary_cast


class RouterExternalFixedIp {
  /// The IP address to set on the router.
  final String? ipAddress;
  /// Subnet in which the fixed IP belongs to.
  final String? subnetId;

  /// Creates a new [RouterExternalFixedIp].
  /// [ipAddress] The IP address to set on the router.
  /// [subnetId] Subnet in which the fixed IP belongs to.
  RouterExternalFixedIp({
    this.ipAddress,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'subnetId': ?subnetId,
    };
  }

  factory RouterExternalFixedIp.fromMap(Map<String, dynamic> map) {
    return RouterExternalFixedIp(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

