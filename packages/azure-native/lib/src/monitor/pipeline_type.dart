/// The type of pipeline
enum PipelineType {
  logs("Logs");

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

