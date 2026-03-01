/// The severity level of this CIS benchmark check.
enum CisBenchmarkSeverityContaineranalysisV1alpha1 {
  severityUnspecified("SEVERITY_UNSPECIFIED"),
  minimal("MINIMAL"),
  low("LOW"),
  medium("MEDIUM"),
  high("HIGH"),
  critical("CRITICAL");

  const CisBenchmarkSeverityContaineranalysisV1alpha1(this.value);
  final String value;

  static CisBenchmarkSeverityContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in CisBenchmarkSeverityContaineranalysisV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown CisBenchmarkSeverityContaineranalysisV1alpha1 value: $value',
    );
  }
}
