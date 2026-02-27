/// The output format of the Dataproc Metastore service's logs.
enum TelemetryConfigLogFormatMetastoreV1alpha {
  logFormatUnspecified("LOG_FORMAT_UNSPECIFIED"),
  legacy("LEGACY"),
  json("JSON");

  const TelemetryConfigLogFormatMetastoreV1alpha(this.value);
  final String value;

  static TelemetryConfigLogFormatMetastoreV1alpha fromValue(String value) {
    for (final item in TelemetryConfigLogFormatMetastoreV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown TelemetryConfigLogFormatMetastoreV1alpha value: $value');
  }
}
