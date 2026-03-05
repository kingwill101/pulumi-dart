/// Layer4 protocol type that needs to be matched.
enum Layer4Protocol {
  valueTCP("TCP"),
  valueUDP("UDP");

  const Layer4Protocol(this.wireValue);
  final String wireValue;

  static Layer4Protocol fromValue(String value) {
    for (final item in Layer4Protocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Layer4Protocol value: $value');
  }
}

