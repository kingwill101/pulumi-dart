/// [Required] JobLimit type.
enum JobLimitsType {
  command("Command"),
  sweep("Sweep");

  const JobLimitsType(this.wireValue);
  final String wireValue;

  static JobLimitsType fromValue(String value) {
    for (final item in JobLimitsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobLimitsType value: $value');
  }
}
