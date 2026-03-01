/// IP address version.
enum IPVersion {
  valueUnknown("Unknown"),
  valueIPv4("IPv4");

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

