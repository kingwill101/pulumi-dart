/// Protocol to parse syslog messages. Default rfc3164
enum SyslogProtocol {
  rfc3164("rfc3164"),
  rfc5424("rfc5424");

  const SyslogProtocol(this.wireValue);
  final String wireValue;

  static SyslogProtocol fromValue(String value) {
    for (final item in SyslogProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyslogProtocol value: $value');
  }
}

