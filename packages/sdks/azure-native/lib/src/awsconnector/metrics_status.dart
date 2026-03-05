/// Specifies whether the replication metrics are enabled.
enum MetricsStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const MetricsStatus(this.wireValue);
  final String wireValue;

  static MetricsStatus fromValue(String value) {
    for (final item in MetricsStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricsStatus value: $value');
  }
}

