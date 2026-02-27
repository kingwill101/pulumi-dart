/// Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metric_kind and value_type might not be supported.
enum MetricDescriptorMetricKindMonitoringV3 {
  metricKindUnspecified("METRIC_KIND_UNSPECIFIED"),
  gauge("GAUGE"),
  delta("DELTA"),
  cumulative("CUMULATIVE");

  const MetricDescriptorMetricKindMonitoringV3(this.value);
  final String value;

  static MetricDescriptorMetricKindMonitoringV3 fromValue(String value) {
    for (final item in MetricDescriptorMetricKindMonitoringV3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MetricDescriptorMetricKindMonitoringV3 value: $value');
  }
}
