import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of exporter.
enum ExporterType implements pulumi.PulumiEnum<String> {
  azureMonitorWorkspaceLogs("AzureMonitorWorkspaceLogs"),
  pipelineGroup("PipelineGroup");

  const ExporterType(this.wireValue);
  @override
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
