/// Whether the resource is continuously analyzed.
enum DiscoveryOccurrenceContinuousAnalysis {
  continuousAnalysisUnspecified("CONTINUOUS_ANALYSIS_UNSPECIFIED"),
  active("ACTIVE"),
  inactive("INACTIVE");

  const DiscoveryOccurrenceContinuousAnalysis(this.value);
  final String value;

  static DiscoveryOccurrenceContinuousAnalysis fromValue(String value) {
    for (final item in DiscoveryOccurrenceContinuousAnalysis.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryOccurrenceContinuousAnalysis value: $value');
  }
}

