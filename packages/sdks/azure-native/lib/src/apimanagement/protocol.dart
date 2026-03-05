enum Protocol {
  valueHttp("http"),
  valueHttps("https"),
  valueWs("ws"),
  valueWss("wss");

  const Protocol(this.wireValue);
  final String wireValue;

  static Protocol fromValue(String value) {
    for (final item in Protocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Protocol value: $value');
  }
}

