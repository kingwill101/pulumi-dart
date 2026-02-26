/// The status of discovery for the resource.
enum DiscoveredAnalysisStatus2 {
  analysisStatusUnspecified("ANALYSIS_STATUS_UNSPECIFIED"),
  pending("PENDING"),
  scanning("SCANNING"),
  finishedSuccess("FINISHED_SUCCESS"),
  complete("COMPLETE"),
  finishedFailed("FINISHED_FAILED"),
  finishedUnsupported("FINISHED_UNSUPPORTED");

  const DiscoveredAnalysisStatus2(this.value);
  final String value;

  static DiscoveredAnalysisStatus2 fromValue(String value) {
    for (final item in DiscoveredAnalysisStatus2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveredAnalysisStatus2 value: $value');
  }
}
