import 'package:pulumi/pulumi.dart' as pulumi;

enum KnownPrometheusForwarderDataSourceStreams implements pulumi.PulumiEnum<String> {
  valueMicrosoftPrometheusMetrics("Microsoft-PrometheusMetrics");

  const KnownPrometheusForwarderDataSourceStreams(this.wireValue);
  @override
  final String wireValue;

  static KnownPrometheusForwarderDataSourceStreams fromValue(String value) {
    for (final item in KnownPrometheusForwarderDataSourceStreams.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownPrometheusForwarderDataSourceStreams value: $value');
  }
}
