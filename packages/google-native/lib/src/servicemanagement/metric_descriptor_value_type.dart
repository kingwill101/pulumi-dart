/// Whether the measurement is an integer, a floating-point number, etc. Some combinations of `metric_kind` and `value_type` might not be supported.
enum MetricDescriptorValueType {
  valueTypeUnspecified("VALUE_TYPE_UNSPECIFIED"),
  bool("BOOL"),
  int64("INT64"),
  double("DOUBLE"),
  string("STRING"),
  distribution("DISTRIBUTION"),
  money("MONEY");

  const MetricDescriptorValueType(this.value);
  final String value;

  static MetricDescriptorValueType fromValue(String value) {
    for (final item in MetricDescriptorValueType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricDescriptorValueType value: $value');
  }
}

