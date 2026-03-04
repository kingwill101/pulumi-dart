enum KnownSyslogDataSourceStreams {
  valueMicrosoftSyslog("Microsoft-Syslog");

  const KnownSyslogDataSourceStreams(this.wireValue);
  final String wireValue;

  static KnownSyslogDataSourceStreams fromValue(String value) {
    for (final item in KnownSyslogDataSourceStreams.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownSyslogDataSourceStreams value: $value');
  }
}
