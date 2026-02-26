// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromMachineImageNetworkInterfaceAliasIpRange {
  /// The IP CIDR range represented by this alias IP range.
  final String ipCidrRange;

  /// The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IP range.
  final String? subnetworkRangeName;

  InstanceFromMachineImageNetworkInterfaceAliasIpRange({
    required this.ipCidrRange,
    this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipCidrRange'] = ipCidrRange;
    final subnetworkRangeNameValue = subnetworkRangeName;
    if (subnetworkRangeNameValue != null) {
      map['subnetworkRangeName'] = subnetworkRangeNameValue;
    }
    return map;
  }

  factory InstanceFromMachineImageNetworkInterfaceAliasIpRange.fromMap(
      Map<String, dynamic> map) {
    return InstanceFromMachineImageNetworkInterfaceAliasIpRange(
      ipCidrRange: map['ipCidrRange'] as String,
      subnetworkRangeName: map['subnetworkRangeName'] == null
          ? null
          : map['subnetworkRangeName'] as String,
    );
  }
}
