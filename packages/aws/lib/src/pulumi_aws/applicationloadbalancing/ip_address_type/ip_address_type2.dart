enum IpAddressType2 {
  ipv4("ipv4"),
  dualstack("dualstack");

  const IpAddressType2(this.value);
  final String value;

  static IpAddressType2 fromValue(String value) {
    for (final item in IpAddressType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAddressType2 value: $value');
  }
}
