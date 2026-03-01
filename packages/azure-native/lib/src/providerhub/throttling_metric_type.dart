/// The throttling metric type
enum ThrottlingMetricType {
  notSpecified("NotSpecified"),
  numberOfRequests("NumberOfRequests"),
  numberOfResources("NumberOfResources");

  const ThrottlingMetricType(this.value);
  final String value;

  static ThrottlingMetricType fromValue(String value) {
    for (final item in ThrottlingMetricType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ThrottlingMetricType value: $value');
  }
}

