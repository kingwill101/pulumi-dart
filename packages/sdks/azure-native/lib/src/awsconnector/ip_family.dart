/// Property value
enum IpFamily {
  ipv4("ipv4"),
  ipv6("ipv6");

  const IpFamily(this.value);
  final String value;

  static IpFamily fromValue(String value) {
    for (final item in IpFamily.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpFamily value: $value');
  }
}

