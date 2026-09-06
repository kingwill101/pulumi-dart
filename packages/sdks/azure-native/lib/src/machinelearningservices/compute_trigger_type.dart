import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] The schedule trigger type.
enum ComputeTriggerType implements pulumi.PulumiEnum<String> {
  recurrence("Recurrence"),
  cron("Cron");

  const ComputeTriggerType(this.wireValue);
  @override
  final String wireValue;

  static ComputeTriggerType fromValue(String value) {
    for (final item in ComputeTriggerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeTriggerType value: $value');
  }
}
