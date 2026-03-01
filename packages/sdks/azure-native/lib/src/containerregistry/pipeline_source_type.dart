/// The type of source for the import pipeline.
enum PipelineSourceType {
  valueAzureStorageBlobContainer("AzureStorageBlobContainer");

  const PipelineSourceType(this.value);
  final String value;

  static PipelineSourceType fromValue(String value) {
    for (final item in PipelineSourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineSourceType value: $value');
  }
}

