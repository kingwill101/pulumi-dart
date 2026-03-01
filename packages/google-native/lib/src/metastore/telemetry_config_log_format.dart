/// The output format of the Dataproc Metastore service's logs.
enum TelemetryConfigLogFormat {
  logFormatUnspecified("LOG_FORMAT_UNSPECIFIED"),
  legacy("LEGACY"),
  json("JSON");

  const TelemetryConfigLogFormat(this.value);
  final String value;

  static TelemetryConfigLogFormat fromValue(String value) {
    for (final item in TelemetryConfigLogFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TelemetryConfigLogFormat value: $value');
  }
}
