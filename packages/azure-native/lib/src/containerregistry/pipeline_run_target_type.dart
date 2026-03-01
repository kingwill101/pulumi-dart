/// The type of the target.
enum PipelineRunTargetType {
  valueAzureStorageBlob("AzureStorageBlob");

  const PipelineRunTargetType(this.value);
  final String value;

  static PipelineRunTargetType fromValue(String value) {
    for (final item in PipelineRunTargetType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineRunTargetType value: $value');
  }
}

