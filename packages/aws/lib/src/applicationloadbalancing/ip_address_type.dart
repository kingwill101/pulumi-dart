enum IpAddressType {
  ipv4("ipv4"),
  dualstack("dualstack");

  const IpAddressType(this.value);
  final String value;

  static IpAddressType fromValue(String value) {
    for (final item in IpAddressType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAddressType value: $value');
  }
}

