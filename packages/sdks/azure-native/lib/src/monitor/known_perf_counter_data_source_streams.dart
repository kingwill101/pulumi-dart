enum KnownPerfCounterDataSourceStreams {
  valueMicrosoftPerf("Microsoft-Perf"),
  valueMicrosoftInsightsMetrics("Microsoft-InsightsMetrics");

  const KnownPerfCounterDataSourceStreams(this.wireValue);
  final String wireValue;

  static KnownPerfCounterDataSourceStreams fromValue(String value) {
    for (final item in KnownPerfCounterDataSourceStreams.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown KnownPerfCounterDataSourceStreams value: $value',
    );
  }
}
