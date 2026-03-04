/// The type of the source.
enum PipelineRunSourceType {
  valueAzureStorageBlob("AzureStorageBlob");

  const PipelineRunSourceType(this.wireValue);
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
