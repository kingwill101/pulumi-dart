// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromTemplateNetworkInterfaceAliasIpRange {
  /// The IP CIDR range represented by this alias IP range.
  final String ipCidrRange;

  /// The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IP range.
  final String? subnetworkRangeName;

  /// Creates a new [InstanceFromTemplateNetworkInterfaceAliasIpRange].
  /// [ipCidrRange] The IP CIDR range represented by this alias IP range.
  /// [subnetworkRangeName] The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IP range.
  InstanceFromTemplateNetworkInterfaceAliasIpRange({
    required this.ipCidrRange,
    this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ipCidrRange,
      'subnetworkRangeName': ?subnetworkRangeName,
    };
  }

  factory InstanceFromTemplateNetworkInterfaceAliasIpRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceFromTemplateNetworkInterfaceAliasIpRange(
      ipCidrRange: map['ipCidrRange'] as String,
      subnetworkRangeName: map['subnetworkRangeName'] == null
          ? null
          : map['subnetworkRangeName'] as String,
    );
  }
}
