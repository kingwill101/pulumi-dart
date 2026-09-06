import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of source for the import pipeline.
enum PipelineSourceType implements pulumi.PulumiEnum<String> {
  valueAzureStorageBlobContainer("AzureStorageBlobContainer");

  const PipelineSourceType(this.wireValue);
  @override
  final String wireValue;

  static PipelineSourceType fromValue(String value) {
    for (final item in PipelineSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineSourceType value: $value');
  }
}
