/// Whether the metric records instantaneous values, changes to a value, etc. Some combinations of `metric_kind` and `value_type` might not be supported.
enum MetricDescriptorMetricKindServicemanagementV1 {
  metricKindUnspecified("METRIC_KIND_UNSPECIFIED"),
  gauge("GAUGE"),
  delta("DELTA"),
  cumulative("CUMULATIVE");

  const MetricDescriptorMetricKindServicemanagementV1(this.value);
  final String value;

  static MetricDescriptorMetricKindServicemanagementV1 fromValue(String value) {
    for (final item in MetricDescriptorMetricKindServicemanagementV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MetricDescriptorMetricKindServicemanagementV1 value: $value');
  }
}
