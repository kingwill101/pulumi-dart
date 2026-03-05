/// The IP version to use for cluster networking and IP assignment.
enum IpFamily {
  valueIPv4("IPv4"),
  valueIPv6("IPv6");

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

