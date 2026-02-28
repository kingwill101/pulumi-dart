// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceNetworkInterfaceAliasIpRange {
  /// The IP CIDR range represented by this alias IP range.
  final String ipCidrRange;

  /// The subnetwork secondary range name specifying
  /// the secondary range from which to allocate the IP CIDR range for this alias IP
  /// range.
  final String subnetworkRangeName;

  /// Creates a new [GetInstanceNetworkInterfaceAliasIpRange].
  /// [ipCidrRange] The IP CIDR range represented by this alias IP range.
  /// [subnetworkRangeName] The subnetwork secondary range name specifying
  GetInstanceNetworkInterfaceAliasIpRange({
    required this.ipCidrRange,
    required this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipCidrRange'] = ipCidrRange;
    map['subnetworkRangeName'] = subnetworkRangeName;
    return map;
  }

  factory GetInstanceNetworkInterfaceAliasIpRange.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceNetworkInterfaceAliasIpRange(
      ipCidrRange: map['ipCidrRange'] as String,
      subnetworkRangeName: map['subnetworkRangeName'] as String,
    );
  }
}
