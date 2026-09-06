import 'package:pulumi/pulumi.dart' as pulumi;

/// Kind of the signal definition
enum SignalKind implements pulumi.PulumiEnum<String> {
  azureResourceMetric("AzureResourceMetric"),
  logAnalyticsQuery("LogAnalyticsQuery"),
  prometheusMetricsQuery("PrometheusMetricsQuery");

  const SignalKind(this.wireValue);
  @override
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
