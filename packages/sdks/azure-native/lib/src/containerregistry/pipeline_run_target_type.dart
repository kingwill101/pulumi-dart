import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the target.
enum PipelineRunTargetType implements pulumi.PulumiEnum<String> {
  valueAzureStorageBlob("AzureStorageBlob");

  const PipelineRunTargetType(this.wireValue);
  @override
  final String wireValue;

  static PipelineRunTargetType fromValue(String value) {
    for (final item in PipelineRunTargetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineRunTargetType value: $value');
  }
}
