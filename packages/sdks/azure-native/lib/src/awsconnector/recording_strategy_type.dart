/// Property value
enum RecordingStrategyType {
  aLLSUPPORTEDRESOURCETYPES("ALL_SUPPORTED_RESOURCE_TYPES"),
  eXCLUSIONBYRESOURCETYPES("EXCLUSION_BY_RESOURCE_TYPES"),
  iNCLUSIONBYRESOURCETYPES("INCLUSION_BY_RESOURCE_TYPES");

  const RecordingStrategyType(this.value);
  final String value;

  static RecordingStrategyType fromValue(String value) {
    for (final item in RecordingStrategyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecordingStrategyType value: $value');
  }
}

