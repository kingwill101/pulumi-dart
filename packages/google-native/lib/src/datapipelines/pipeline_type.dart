/// Required. The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
enum PipelineType {
  pipelineTypeUnspecified("PIPELINE_TYPE_UNSPECIFIED"),
  pipelineTypeBatch("PIPELINE_TYPE_BATCH"),
  pipelineTypeStreaming("PIPELINE_TYPE_STREAMING");

  const PipelineType(this.value);
  final String value;

  static PipelineType fromValue(String value) {
    for (final item in PipelineType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineType value: $value');
  }
}

