/// Set this property to filter the application logs for your function that Lambda sends to CloudWatch. Lambda only sends application logs at the selected level of detail and lower, where ``TRACE`` is the highest level and ``FATAL`` is the lowest.
enum LoggingConfigApplicationLogLevel {
  dEBUG("DEBUG"),
  eRROR("ERROR"),
  fATAL("FATAL"),
  iNFO("INFO"),
  tRACE("TRACE"),
  wARN("WARN");

  const LoggingConfigApplicationLogLevel(this.wireValue);
  final String wireValue;

  static LoggingConfigApplicationLogLevel fromValue(String value) {
    for (final item in LoggingConfigApplicationLogLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingConfigApplicationLogLevel value: $value');
  }
}
