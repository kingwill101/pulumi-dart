/// IP address version.
enum IPVersion {
  valueUnknown("Unknown"),
  valueIPv4("IPv4");

  const IPVersion(this.wireValue);
  final String wireValue;

  static IPVersion fromValue(String value) {
    for (final item in IPVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPVersion value: $value');
  }
}
