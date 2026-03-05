/// The type of the target.
enum PipelineRunTargetType {
  valueAzureStorageBlob("AzureStorageBlob");

  const PipelineRunTargetType(this.wireValue);
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

