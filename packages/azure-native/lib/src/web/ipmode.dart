/// Specifies the IP mode of the app.
enum IPMode {
  valueIPv4("IPv4"),
  valueIPv6("IPv6"),
  valueIPv4AndIPv6("IPv4AndIPv6");

  const IPMode(this.value);
  final String value;

  static IPMode fromValue(String value) {
    for (final item in IPMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPMode value: $value');
  }
}

