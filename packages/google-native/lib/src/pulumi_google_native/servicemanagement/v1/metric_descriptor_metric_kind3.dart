/// Whether the metric records instantaneous values, changes to a value, etc. Some combinations of `metric_kind` and `value_type` might not be supported.
enum MetricDescriptorMetricKind3 {
  metricKindUnspecified("METRIC_KIND_UNSPECIFIED"),
  gauge("GAUGE"),
  delta("DELTA"),
  cumulative("CUMULATIVE");

  const MetricDescriptorMetricKind3(this.value);
  final String value;

  static MetricDescriptorMetricKind3 fromValue(String value) {
    for (final item in MetricDescriptorMetricKind3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricDescriptorMetricKind3 value: $value');
  }
}
