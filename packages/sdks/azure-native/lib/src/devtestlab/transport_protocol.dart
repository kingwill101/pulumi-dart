/// Protocol type of the port.
enum TransportProtocol {
  tcp("Tcp"),
  udp("Udp");

  const TransportProtocol(this.wireValue);
  final String wireValue;

  static TransportProtocol fromValue(String value) {
    for (final item in TransportProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransportProtocol value: $value');
  }
}

