import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the auto trigger for base image dependency updates.
enum BaseImageTriggerType implements pulumi.PulumiEnum<String> {
  valueAll("All"),
  valueRuntime("Runtime");

  const BaseImageTriggerType(this.wireValue);
  @override
  final String wireValue;

  static BaseImageTriggerType fromValue(String value) {
    for (final item in BaseImageTriggerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BaseImageTriggerType value: $value');
  }
}
