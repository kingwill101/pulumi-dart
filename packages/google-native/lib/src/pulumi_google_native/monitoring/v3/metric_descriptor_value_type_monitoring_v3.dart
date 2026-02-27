/// Whether the measurement is an integer, a floating-point number, etc. Some combinations of metric_kind and value_type might not be supported.
enum MetricDescriptorValueTypeMonitoringV3 {
  valueTypeUnspecified("VALUE_TYPE_UNSPECIFIED"),
  bool("BOOL"),
  int64("INT64"),
  double("DOUBLE"),
  string("STRING"),
  distribution("DISTRIBUTION"),
  money("MONEY");

  const MetricDescriptorValueTypeMonitoringV3(this.value);
  final String value;

  static MetricDescriptorValueTypeMonitoringV3 fromValue(String value) {
    for (final item in MetricDescriptorValueTypeMonitoringV3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MetricDescriptorValueTypeMonitoringV3 value: $value');
  }
}
