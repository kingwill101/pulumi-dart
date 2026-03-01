// ignore_for_file: unused_element, unnecessary_cast

class InstanceNetworkInterfaceAliasIpRange {
  /// The IP CIDR range represented by this alias IP range. This IP CIDR range
  /// must belong to the specified subnetwork and cannot contain IP addresses reserved by
  /// system or used by other network interfaces. This range may be a single IP address
  /// (e.g. 10.2.3.4), a netmask (e.g. /24) or a CIDR format string (e.g. 10.1.2.0/24).
  final String ipCidrRange;

  /// The subnetwork secondary range name specifying
  /// the secondary range from which to allocate the IP CIDR range for this alias IP
  /// range. If left unspecified, the primary range of the subnetwork will be used.
  final String? subnetworkRangeName;

  /// Creates a new [InstanceNetworkInterfaceAliasIpRange].
  /// [ipCidrRange] The IP CIDR range represented by this alias IP range. This IP CIDR range
  /// [subnetworkRangeName] The subnetwork secondary range name specifying
  InstanceNetworkInterfaceAliasIpRange({
    required this.ipCidrRange,
    this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ipCidrRange,
      'subnetworkRangeName': ?subnetworkRangeName,
    };
  }

  factory InstanceNetworkInterfaceAliasIpRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceNetworkInterfaceAliasIpRange(
      ipCidrRange: map['ipCidrRange'] as String,
      subnetworkRangeName: map['subnetworkRangeName'] == null
          ? null
          : map['subnetworkRangeName'] as String,
    );
  }
}
