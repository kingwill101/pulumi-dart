/// The type of pipeline
enum PipelineType {
  logs("Logs");

  const PipelineType(this.wireValue);
  final String wireValue;

  static PipelineType fromValue(String value) {
    for (final item in PipelineType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineType value: $value');
  }
}

