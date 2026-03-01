/// Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
enum IPVersion {
  valueIPv4("IPv4"),
  valueIPv6("IPv6");

  const IPVersion(this.value);
  final String value;

  static IPVersion fromValue(String value) {
    for (final item in IPVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPVersion value: $value');
  }
}

