/// [Required] Type of the job's entry point.
enum SparkJobEntryType {
  valueSparkJobPythonEntry("SparkJobPythonEntry"),
  valueSparkJobScalaEntry("SparkJobScalaEntry");

  const SparkJobEntryType(this.value);
  final String value;

  static SparkJobEntryType fromValue(String value) {
    for (final item in SparkJobEntryType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkJobEntryType value: $value');
  }
}

