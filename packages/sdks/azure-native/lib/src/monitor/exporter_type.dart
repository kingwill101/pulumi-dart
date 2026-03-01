/// The type of exporter.
enum ExporterType {
  azureMonitorWorkspaceLogs("AzureMonitorWorkspaceLogs"),
  pipelineGroup("PipelineGroup");

  const ExporterType(this.value);
  final String value;

  static ExporterType fromValue(String value) {
    for (final item in ExporterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExporterType value: $value');
  }
}

