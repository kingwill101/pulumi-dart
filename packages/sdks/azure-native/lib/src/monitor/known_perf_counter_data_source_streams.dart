enum KnownPerfCounterDataSourceStreams {
  valueMicrosoftPerf("Microsoft-Perf"),
  valueMicrosoftInsightsMetrics("Microsoft-InsightsMetrics");

  const KnownPerfCounterDataSourceStreams(this.value);
  final String value;

  static KnownPerfCounterDataSourceStreams fromValue(String value) {
    for (final item in KnownPerfCounterDataSourceStreams.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownPerfCounterDataSourceStreams value: $value');
  }
}

