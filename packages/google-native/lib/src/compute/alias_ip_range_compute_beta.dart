// ignore_for_file: unused_element, unnecessary_cast

/// An alias IP range attached to an instance's network interface.
class AliasIpRangeComputeBeta {
  /// The IP alias ranges to allocate for this interface. This IP CIDR range must belong to the specified subnetwork and cannot contain IP addresses reserved by system or used by other network interfaces. This range may be a single IP address (such as 10.2.3.4), a netmask (such as /24) or a CIDR-formatted string (such as 10.1.2.0/24).
  final String? ipCidrRange;

  /// The name of a subnetwork secondary IP range from which to allocate an IP alias range. If not specified, the primary range of the subnetwork is used.
  final String? subnetworkRangeName;

  /// Creates a new [AliasIpRangeComputeBeta].
  /// [ipCidrRange] The IP alias ranges to allocate for this interface. This IP CIDR range must belong to the specified subnetwork and cannot contain IP addresses reserved by system or used by other network interfaces. This range may be a single IP address (such as 10.2.3.4), a netmask (such as /24) or a CIDR-formatted string (such as 10.1.2.0/24).
  /// [subnetworkRangeName] The name of a subnetwork secondary IP range from which to allocate an IP alias range. If not specified, the primary range of the subnetwork is used.
  AliasIpRangeComputeBeta({
    this.ipCidrRange,
    this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipCidrRangeValue = ipCidrRange;
    if (ipCidrRangeValue != null) {
      map['ipCidrRange'] = ipCidrRangeValue;
    }
    final subnetworkRangeNameValue = subnetworkRangeName;
    if (subnetworkRangeNameValue != null) {
      map['subnetworkRangeName'] = subnetworkRangeNameValue;
    }
    return map;
  }

  factory AliasIpRangeComputeBeta.fromMap(Map<String, dynamic> map) {
    return AliasIpRangeComputeBeta(
      ipCidrRange:
          map['ipCidrRange'] == null ? null : map['ipCidrRange'] as String,
      subnetworkRangeName: map['subnetworkRangeName'] == null
          ? null
          : map['subnetworkRangeName'] as String,
    );
  }
}
