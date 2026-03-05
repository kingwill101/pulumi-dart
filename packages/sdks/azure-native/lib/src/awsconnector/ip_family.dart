/// Property value
enum IpFamily {
  ipv4("ipv4"),
  ipv6("ipv6");

  const IpFamily(this.wireValue);
  final String wireValue;

  static IpFamily fromValue(String value) {
    for (final item in IpFamily.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpFamily value: $value');
  }
}

