/// Protocol type of the port.
enum TransportProtocol {
  tcp("Tcp"),
  udp("Udp");

  const TransportProtocol(this.value);
  final String value;

  static TransportProtocol fromValue(String value) {
    for (final item in TransportProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransportProtocol value: $value');
  }
}

