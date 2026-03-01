/// The type of the step.
enum StepType {
  valueDocker("Docker"),
  valueFileTask("FileTask"),
  valueEncodedTask("EncodedTask");

  const StepType(this.value);
  final String value;

  static StepType fromValue(String value) {
    for (final item in StepType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StepType value: $value');
  }
}

