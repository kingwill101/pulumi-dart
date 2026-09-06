import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the flow of the ingestion.
enum IngestionMode implements pulumi.PulumiEnum<String> {
  applicationInsights("ApplicationInsights"),
  applicationInsightsWithDiagnosticSettings("ApplicationInsightsWithDiagnosticSettings"),
  logAnalytics("LogAnalytics");

  const IngestionMode(this.wireValue);
  @override
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
