/// The source of the action to execute.
enum JobStepActionSource {
  valueInline("Inline");

  const JobStepActionSource(this.value);
  final String value;

  static JobStepActionSource fromValue(String value) {
    for (final item in JobStepActionSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobStepActionSource value: $value');
  }
}

