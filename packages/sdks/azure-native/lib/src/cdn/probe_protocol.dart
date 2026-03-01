/// Protocol to use for health probe.
enum ProbeProtocol {
  valueNotSet("NotSet"),
  valueHttp("Http"),
  valueHttps("Https");

  const ProbeProtocol(this.value);
  final String value;

  static ProbeProtocol fromValue(String value) {
    for (final item in ProbeProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProbeProtocol value: $value');
  }
}

