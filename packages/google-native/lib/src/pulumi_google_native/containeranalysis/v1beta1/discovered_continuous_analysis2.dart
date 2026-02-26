/// Whether the resource is continuously analyzed.
enum DiscoveredContinuousAnalysis2 {
  continuousAnalysisUnspecified("CONTINUOUS_ANALYSIS_UNSPECIFIED"),
  active("ACTIVE"),
  inactive("INACTIVE");

  const DiscoveredContinuousAnalysis2(this.value);
  final String value;

  static DiscoveredContinuousAnalysis2 fromValue(String value) {
    for (final item in DiscoveredContinuousAnalysis2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveredContinuousAnalysis2 value: $value');
  }
}
