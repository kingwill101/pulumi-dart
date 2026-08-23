/// Log level for DNS queries in localDNS.
enum LocalDNSQueryLogging {
  valueError("Error"),
  valueLog("Log");

  const LocalDNSQueryLogging(this.wireValue);
  final String wireValue;

  static LocalDNSQueryLogging fromValue(String value) {
    for (final item in LocalDNSQueryLogging.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDNSQueryLogging value: $value');
  }
}
