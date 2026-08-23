enum PipelineOptions {
  valueOverwriteTags("OverwriteTags"),
  valueOverwriteBlobs("OverwriteBlobs"),
  valueDeleteSourceBlobOnSuccess("DeleteSourceBlobOnSuccess"),
  valueContinueOnErrors("ContinueOnErrors");

  const PipelineOptions(this.wireValue);
  final String wireValue;

  static PipelineOptions fromValue(String value) {
    for (final item in PipelineOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineOptions value: $value');
  }
}
