/// The type of source for the import pipeline.
enum PipelineSourceType {
  valueAzureStorageBlobContainer("AzureStorageBlobContainer");

  const PipelineSourceType(this.wireValue);
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
