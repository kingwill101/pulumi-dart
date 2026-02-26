/// The type of configuration. In accessConfigs (IPv4), the default and only option is ONE_TO_ONE_NAT. In ipv6AccessConfigs, the default and only option is DIRECT_IPV6.
enum AccessConfigType2 {
  directIpv6("DIRECT_IPV6"),
  oneToOneNat("ONE_TO_ONE_NAT");

  const AccessConfigType2(this.value);
  final String value;

  static AccessConfigType2 fromValue(String value) {
    for (final item in AccessConfigType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessConfigType2 value: $value');
  }
}
