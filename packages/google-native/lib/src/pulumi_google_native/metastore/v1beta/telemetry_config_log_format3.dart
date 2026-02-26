/// The output format of the Dataproc Metastore service's logs.
enum TelemetryConfigLogFormat3 {
  logFormatUnspecified("LOG_FORMAT_UNSPECIFIED"),
  legacy("LEGACY"),
  json("JSON");

  const TelemetryConfigLogFormat3(this.value);
  final String value;

  static TelemetryConfigLogFormat3 fromValue(String value) {
    for (final item in TelemetryConfigLogFormat3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TelemetryConfigLogFormat3 value: $value');
  }
}
