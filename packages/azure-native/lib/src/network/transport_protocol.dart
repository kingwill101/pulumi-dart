/// The reference to the transport protocol used by the load balancing rule.
enum TransportProtocol {
  valueUdp("Udp"),
  valueTcp("Tcp"),
  valueAll("All");

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

