/// The type of the source.
enum PipelineRunSourceType {
  valueAzureStorageBlob("AzureStorageBlob");

  const PipelineRunSourceType(this.value);
  final String value;

  static PipelineRunSourceType fromValue(String value) {
    for (final item in PipelineRunSourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineRunSourceType value: $value');
  }
}

