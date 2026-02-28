enum CisBenchmarkSeverity {
  severityUnspecified("SEVERITY_UNSPECIFIED"),
  minimal("MINIMAL"),
  low("LOW"),
  medium("MEDIUM"),
  high("HIGH"),
  critical("CRITICAL");

  const CisBenchmarkSeverity(this.value);
  final String value;

  static CisBenchmarkSeverity fromValue(String value) {
    for (final item in CisBenchmarkSeverity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CisBenchmarkSeverity value: $value');
  }
}
