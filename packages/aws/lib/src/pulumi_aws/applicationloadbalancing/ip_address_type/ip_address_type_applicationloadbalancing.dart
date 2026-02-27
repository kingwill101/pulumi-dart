enum IpAddressTypeApplicationloadbalancing {
  ipv4("ipv4"),
  dualstack("dualstack");

  const IpAddressTypeApplicationloadbalancing(this.value);
  final String value;

  static IpAddressTypeApplicationloadbalancing fromValue(String value) {
    for (final item in IpAddressTypeApplicationloadbalancing.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown IpAddressTypeApplicationloadbalancing value: $value');
  }
}
