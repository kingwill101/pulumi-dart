/// Indicates the flow of the ingestion.
enum IngestionMode {
  valueApplicationInsights("ApplicationInsights"),
  valueApplicationInsightsWithDiagnosticSettings(
    "ApplicationInsightsWithDiagnosticSettings",
  ),
  valueLogAnalytics("LogAnalytics");

  const IngestionMode(this.wireValue);
  final String wireValue;

  static IngestionMode fromValue(String value) {
    for (final item in IngestionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngestionMode value: $value');
  }
}
