/// Protocol over which communication will happen over this endpoint
enum Protocol {
  valueTcp("tcp"),
  valueUdp("udp"),
  valueHttp("http");

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

