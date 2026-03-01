/// Specifies whether the IP configuration's public IP is IPv4 or IPv6. Default is IPv4.
enum PublicIPAddressVersion {
  valueIPv4("IPv4"),
  valueIPv6("IPv6");

  const PublicIPAddressVersion(this.value);
  final String value;

  static PublicIPAddressVersion fromValue(String value) {
    for (final item in PublicIPAddressVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAddressVersion value: $value');
  }
}

