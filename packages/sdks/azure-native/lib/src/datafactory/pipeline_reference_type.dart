/// Pipeline reference type.
enum PipelineReferenceType {
  pipelineReference("PipelineReference");

  const PipelineReferenceType(this.wireValue);
  final String wireValue;

  static PipelineReferenceType fromValue(String value) {
    for (final item in PipelineReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineReferenceType value: $value');
  }
}
