/// IP version of this interface.
enum RouterInterfaceIpVersion2 {
  ipv4("IPV4"),
  ipv6("IPV6");

  const RouterInterfaceIpVersion2(this.value);
  final String value;

  static RouterInterfaceIpVersion2 fromValue(String value) {
    for (final item in RouterInterfaceIpVersion2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterInterfaceIpVersion2 value: $value');
  }
}
