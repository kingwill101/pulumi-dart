import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] JobLimit type.
enum JobLimitsType implements pulumi.PulumiEnum<String> {
  command("Command"),
  sweep("Sweep");

  const JobLimitsType(this.wireValue);
  @override
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
