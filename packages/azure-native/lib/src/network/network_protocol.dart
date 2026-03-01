/// Network protocol this resource applies to.
enum NetworkProtocol {
  valueAny("Any"),
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueICMP("ICMP");

  const NetworkProtocol(this.value);
  final String value;

  static NetworkProtocol fromValue(String value) {
    for (final item in NetworkProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkProtocol value: $value');
  }
}

