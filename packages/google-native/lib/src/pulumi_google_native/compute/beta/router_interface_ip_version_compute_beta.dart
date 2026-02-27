/// IP version of this interface.
enum RouterInterfaceIpVersionComputeBeta {
  ipv4("IPV4"),
  ipv6("IPV6");

  const RouterInterfaceIpVersionComputeBeta(this.value);
  final String value;

  static RouterInterfaceIpVersionComputeBeta fromValue(String value) {
    for (final item in RouterInterfaceIpVersionComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RouterInterfaceIpVersionComputeBeta value: $value');
  }
}
