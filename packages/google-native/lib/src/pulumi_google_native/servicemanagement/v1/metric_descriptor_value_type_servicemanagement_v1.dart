/// Whether the measurement is an integer, a floating-point number, etc. Some combinations of `metric_kind` and `value_type` might not be supported.
enum MetricDescriptorValueTypeServicemanagementV1 {
  valueTypeUnspecified("VALUE_TYPE_UNSPECIFIED"),
  bool("BOOL"),
  int64("INT64"),
  double("DOUBLE"),
  string("STRING"),
  distribution("DISTRIBUTION"),
  money("MONEY");

  const MetricDescriptorValueTypeServicemanagementV1(this.value);
  final String value;

  static MetricDescriptorValueTypeServicemanagementV1 fromValue(String value) {
    for (final item in MetricDescriptorValueTypeServicemanagementV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MetricDescriptorValueTypeServicemanagementV1 value: $value');
  }
}
