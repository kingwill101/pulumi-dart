/// Kind of the signal definition
enum SignalKind {
  azureResourceMetric("AzureResourceMetric"),
  logAnalyticsQuery("LogAnalyticsQuery"),
  prometheusMetricsQuery("PrometheusMetricsQuery");

  const SignalKind(this.value);
  final String value;

  static SignalKind fromValue(String value) {
    for (final item in SignalKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignalKind value: $value');
  }
}

