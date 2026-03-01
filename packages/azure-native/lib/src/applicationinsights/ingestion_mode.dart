/// Indicates the flow of the ingestion.
enum IngestionMode {
  valueApplicationInsights("ApplicationInsights"),
  valueApplicationInsightsWithDiagnosticSettings("ApplicationInsightsWithDiagnosticSettings"),
  valueLogAnalytics("LogAnalytics");

  const IngestionMode(this.value);
  final String value;

  static IngestionMode fromValue(String value) {
    for (final item in IngestionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngestionMode value: $value');
  }
}

