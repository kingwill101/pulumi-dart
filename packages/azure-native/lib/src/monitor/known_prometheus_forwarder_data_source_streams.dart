enum KnownPrometheusForwarderDataSourceStreams {
  valueMicrosoftPrometheusMetrics("Microsoft-PrometheusMetrics");

  const KnownPrometheusForwarderDataSourceStreams(this.value);
  final String value;

  static KnownPrometheusForwarderDataSourceStreams fromValue(String value) {
    for (final item in KnownPrometheusForwarderDataSourceStreams.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownPrometheusForwarderDataSourceStreams value: $value');
  }
}

