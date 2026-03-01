enum Protocol {
  valueHttp("http"),
  valueHttps("https"),
  valueWs("ws"),
  valueWss("wss");

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

