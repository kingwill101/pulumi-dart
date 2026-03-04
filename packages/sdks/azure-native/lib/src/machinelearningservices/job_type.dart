/// [Required] Specifies the type of job.
enum JobType {
  valueAutoML("AutoML"),
  valueCommand("Command"),
  valueSweep("Sweep"),
  valuePipeline("Pipeline"),
  valueSpark("Spark");

  const JobType(this.wireValue);
  final String wireValue;

  static JobType fromValue(String value) {
    for (final item in JobType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobType value: $value');
  }
}
