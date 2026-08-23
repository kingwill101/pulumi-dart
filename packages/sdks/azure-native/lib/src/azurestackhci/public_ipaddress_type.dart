/// Whether the public IP is v4 or v6. Defaults to IPv4
enum PublicIPAddressType {
  iPv4("IPv4"),
  iPv6("IPv6");

  const PublicIPAddressType(this.wireValue);
  final String wireValue;

  static PublicIPAddressType fromValue(String value) {
    for (final item in PublicIPAddressType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAddressType value: $value');
  }
}
