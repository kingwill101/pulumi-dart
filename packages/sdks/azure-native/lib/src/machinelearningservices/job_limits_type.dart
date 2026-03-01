/// [Required] JobLimit type.
enum JobLimitsType {
  valueCommand("Command"),
  valueSweep("Sweep");

  const JobLimitsType(this.value);
  final String value;

  static JobLimitsType fromValue(String value) {
    for (final item in JobLimitsType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobLimitsType value: $value');
  }
}

