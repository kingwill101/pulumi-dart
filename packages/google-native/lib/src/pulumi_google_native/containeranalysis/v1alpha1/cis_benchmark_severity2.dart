/// The severity level of this CIS benchmark check.
enum CisBenchmarkSeverity2 {
  severityUnspecified("SEVERITY_UNSPECIFIED"),
  minimal("MINIMAL"),
  low("LOW"),
  medium("MEDIUM"),
  high("HIGH"),
  critical("CRITICAL");

  const CisBenchmarkSeverity2(this.value);
  final String value;

  static CisBenchmarkSeverity2 fromValue(String value) {
    for (final item in CisBenchmarkSeverity2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CisBenchmarkSeverity2 value: $value');
  }
}
