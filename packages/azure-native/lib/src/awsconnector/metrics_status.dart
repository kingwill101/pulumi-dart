/// Specifies whether the replication metrics are enabled.
enum MetricsStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const MetricsStatus(this.value);
  final String value;

  static MetricsStatus fromValue(String value) {
    for (final item in MetricsStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricsStatus value: $value');
  }
}

