// ignore_for_file: unused_element, unnecessary_cast


class FirewallSubnetMapping {
  /// The subnet's IP address type. Valid values: `"DUALSTACK"`, `"IPV4"`.
  final String? ipAddressType;
  /// The unique identifier for the subnet.
  final String subnetId;

  /// Creates a new [FirewallSubnetMapping].
  /// [ipAddressType] The subnet's IP address type. Valid values: `"DUALSTACK"`, `"IPV4"`.
  /// [subnetId] The unique identifier for the subnet.
  FirewallSubnetMapping({
    this.ipAddressType,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ?ipAddressType,
      'subnetId': subnetId,
    };
  }

  factory FirewallSubnetMapping.fromMap(Map<String, dynamic> map) {
    return FirewallSubnetMapping(
      ipAddressType: map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

