import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the step.
enum StepType implements pulumi.PulumiEnum<String> {
  valueDocker("Docker"),
  valueFileTask("FileTask"),
  valueEncodedTask("EncodedTask");

  const StepType(this.wireValue);
  @override
  final String wireValue;

  static StepType fromValue(String value) {
    for (final item in StepType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StepType value: $value');
  }
}
