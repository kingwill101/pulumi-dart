import 'package:pulumi/pulumi.dart' as pulumi;

enum KnownPerfCounterDataSourceStreams implements pulumi.PulumiEnum<String> {
  valueMicrosoftPerf("Microsoft-Perf"),
  valueMicrosoftInsightsMetrics("Microsoft-InsightsMetrics");

  const KnownPerfCounterDataSourceStreams(this.wireValue);
  @override
  final String wireValue;

  static KnownPerfCounterDataSourceStreams fromValue(String value) {
    for (final item in KnownPerfCounterDataSourceStreams.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownPerfCounterDataSourceStreams value: $value');
  }
}
