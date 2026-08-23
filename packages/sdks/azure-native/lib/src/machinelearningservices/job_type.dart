/// [Required] Specifies the type of job.
enum JobType {
  autoML("AutoML"),
  command("Command"),
  sweep("Sweep"),
  pipeline("Pipeline"),
  spark("Spark");

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
