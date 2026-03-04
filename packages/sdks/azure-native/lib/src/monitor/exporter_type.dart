/// The type of exporter.
enum ExporterType {
  azureMonitorWorkspaceLogs("AzureMonitorWorkspaceLogs"),
  pipelineGroup("PipelineGroup");

  const ExporterType(this.wireValue);
  final String wireValue;

  static ExporterType fromValue(String value) {
    for (final item in ExporterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExporterType value: $value');
  }
}
