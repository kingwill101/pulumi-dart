enum BasicPerfSampleSeriesPerfMetricType {
  perfMetricTypeUnspecified("perfMetricTypeUnspecified"),
  memory("memory"),
  cpu("cpu"),
  network("network"),
  graphics("graphics");

  const BasicPerfSampleSeriesPerfMetricType(this.value);
  final String value;

  static BasicPerfSampleSeriesPerfMetricType fromValue(String value) {
    for (final item in BasicPerfSampleSeriesPerfMetricType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown BasicPerfSampleSeriesPerfMetricType value: $value',
    );
  }
}
