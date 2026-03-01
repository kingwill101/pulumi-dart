/// The network protocol of the port.
enum Protocol {
  valueTCP("TCP"),
  valueUDP("UDP");

  const Protocol(this.value);
  final String value;

  static Protocol fromValue(String value) {
    for (final item in Protocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Protocol value: $value');
  }
}

