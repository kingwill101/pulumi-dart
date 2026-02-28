/// Deprecated. The API version that created or updated this metric. The v2 format is used by default and cannot be changed.
enum MetricVersion {
  v2("V2"),
  v1("V1");

  const MetricVersion(this.value);
  final String value;

  static MetricVersion fromValue(String value) {
    for (final item in MetricVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricVersion value: $value');
  }
}
