/// Log level for DNS queries in localDNS.
enum LocalDNSQueryLogging {
  valueError("Error"),
  valueLog("Log");

  const LocalDNSQueryLogging(this.value);
  final String value;

  static LocalDNSQueryLogging fromValue(String value) {
    for (final item in LocalDNSQueryLogging.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDNSQueryLogging value: $value');
  }
}

