/// The output destination type.
enum JobStepOutputType {
  valueSqlDatabase("SqlDatabase");

  const JobStepOutputType(this.value);
  final String value;

  static JobStepOutputType fromValue(String value) {
    for (final item in JobStepOutputType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobStepOutputType value: $value');
  }
}

