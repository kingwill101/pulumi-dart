// ignore_for_file: unused_element, unnecessary_cast

class CustomRoutingAcceleratorIpSet {
  /// The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  final List<String>? ipAddresses;

  /// The type of IP addresses included in this IP set.
  final String? ipFamily;

  CustomRoutingAcceleratorIpSet({
    this.ipAddresses,
    this.ipFamily,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipAddressesValue = ipAddresses;
    if (ipAddressesValue != null) {
      map['ipAddresses'] = ipAddressesValue;
    }
    final ipFamilyValue = ipFamily;
    if (ipFamilyValue != null) {
      map['ipFamily'] = ipFamilyValue;
    }
    return map;
  }

  factory CustomRoutingAcceleratorIpSet.fromMap(Map<String, dynamic> map) {
    return CustomRoutingAcceleratorIpSet(
      ipAddresses: map['ipAddresses'] == null
          ? null
          : (map['ipAddresses'] as List).cast<String>(),
      ipFamily: map['ipFamily'] == null ? null : map['ipFamily'] as String,
    );
  }
}
