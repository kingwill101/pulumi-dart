import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Type of the job's entry point.
enum SparkJobEntryType implements pulumi.PulumiEnum<String> {
  sparkJobPythonEntry("SparkJobPythonEntry"),
  sparkJobScalaEntry("SparkJobScalaEntry");

  const SparkJobEntryType(this.wireValue);
  @override
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
