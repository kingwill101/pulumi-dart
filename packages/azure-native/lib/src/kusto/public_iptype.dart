/// Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6)
enum PublicIPType {
  valueIPv4("IPv4"),
  valueDualStack("DualStack");

  const PublicIPType(this.value);
  final String value;

  static PublicIPType fromValue(String value) {
    for (final item in PublicIPType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPType value: $value');
  }
}

