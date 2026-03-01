enum KnownSyslogDataSourceStreams {
  valueMicrosoftSyslog("Microsoft-Syslog");

  const KnownSyslogDataSourceStreams(this.value);
  final String value;

  static KnownSyslogDataSourceStreams fromValue(String value) {
    for (final item in KnownSyslogDataSourceStreams.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownSyslogDataSourceStreams value: $value');
  }
}

