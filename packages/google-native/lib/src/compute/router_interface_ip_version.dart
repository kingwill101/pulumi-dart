/// IP version of this interface.
enum RouterInterfaceIpVersion {
  ipv4("IPV4"),
  ipv6("IPV6");

  const RouterInterfaceIpVersion(this.value);
  final String value;

  static RouterInterfaceIpVersion fromValue(String value) {
    for (final item in RouterInterfaceIpVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterInterfaceIpVersion value: $value');
  }
}

