/// The output format of the Dataproc Metastore service's logs.
enum TelemetryConfigLogFormat2 {
  logFormatUnspecified("LOG_FORMAT_UNSPECIFIED"),
  legacy("LEGACY"),
  json("JSON");

  const TelemetryConfigLogFormat2(this.value);
  final String value;

  static TelemetryConfigLogFormat2 fromValue(String value) {
    for (final item in TelemetryConfigLogFormat2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TelemetryConfigLogFormat2 value: $value');
  }
}
