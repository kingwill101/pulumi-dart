import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the source.
enum PipelineRunSourceType implements pulumi.PulumiEnum<String> {
  valueAzureStorageBlob("AzureStorageBlob");

  const PipelineRunSourceType(this.wireValue);
  @override
  final String wireValue;

  static PipelineRunSourceType fromValue(String value) {
    for (final item in PipelineRunSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineRunSourceType value: $value');
  }
}
