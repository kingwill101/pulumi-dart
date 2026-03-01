enum PipelineOptions {
  valueOverwriteTags("OverwriteTags"),
  valueOverwriteBlobs("OverwriteBlobs"),
  valueDeleteSourceBlobOnSuccess("DeleteSourceBlobOnSuccess"),
  valueContinueOnErrors("ContinueOnErrors");

  const PipelineOptions(this.value);
  final String value;

  static PipelineOptions fromValue(String value) {
    for (final item in PipelineOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineOptions value: $value');
  }
}

