/// Property value
enum RecordingStrategyType {
  aLLSUPPORTEDRESOURCETYPES("ALL_SUPPORTED_RESOURCE_TYPES"),
  eXCLUSIONBYRESOURCETYPES("EXCLUSION_BY_RESOURCE_TYPES"),
  iNCLUSIONBYRESOURCETYPES("INCLUSION_BY_RESOURCE_TYPES");

  const RecordingStrategyType(this.wireValue);
  final String wireValue;

  static RecordingStrategyType fromValue(String value) {
    for (final item in RecordingStrategyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecordingStrategyType value: $value');
  }
}
