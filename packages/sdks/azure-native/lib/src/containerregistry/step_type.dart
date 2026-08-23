/// The type of the step.
enum StepType {
  valueDocker("Docker"),
  valueFileTask("FileTask"),
  valueEncodedTask("EncodedTask");

  const StepType(this.wireValue);
  final String wireValue;

  static StepType fromValue(String value) {
    for (final item in StepType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StepType value: $value');
  }
}
