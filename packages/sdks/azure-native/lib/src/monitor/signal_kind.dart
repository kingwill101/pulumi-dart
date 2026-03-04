/// Kind of the signal definition
enum SignalKind {
  azureResourceMetric("AzureResourceMetric"),
  logAnalyticsQuery("LogAnalyticsQuery"),
  prometheusMetricsQuery("PrometheusMetricsQuery");

  const SignalKind(this.wireValue);
  final String wireValue;

  static SignalKind fromValue(String value) {
    for (final item in SignalKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignalKind value: $value');
  }
}
