/// Whether the resource is continuously analyzed.
enum DiscoveredContinuousAnalysis {
  continuousAnalysisUnspecified("CONTINUOUS_ANALYSIS_UNSPECIFIED"),
  active("ACTIVE"),
  inactive("INACTIVE");

  const DiscoveredContinuousAnalysis(this.value);
  final String value;

  static DiscoveredContinuousAnalysis fromValue(String value) {
    for (final item in DiscoveredContinuousAnalysis.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveredContinuousAnalysis value: $value');
  }
}
