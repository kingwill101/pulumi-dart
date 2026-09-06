import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Specifies the type of job.
enum JobType implements pulumi.PulumiEnum<String> {
  autoML("AutoML"),
  command("Command"),
  sweep("Sweep"),
  pipeline("Pipeline"),
  spark("Spark");

  const JobType(this.wireValue);
  @override
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
