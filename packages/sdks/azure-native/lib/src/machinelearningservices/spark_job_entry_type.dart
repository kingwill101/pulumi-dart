/// [Required] Type of the job's entry point.
enum SparkJobEntryType {
  sparkJobPythonEntry("SparkJobPythonEntry"),
  sparkJobScalaEntry("SparkJobScalaEntry");

  const SparkJobEntryType(this.wireValue);
  final String wireValue;

  static SparkJobEntryType fromValue(String value) {
    for (final item in SparkJobEntryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkJobEntryType value: $value');
  }
}
