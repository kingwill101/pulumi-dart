import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required]
enum TriggerType implements pulumi.PulumiEnum<String> {
  recurrence("Recurrence"),
  cron("Cron");

  const TriggerType(this.wireValue);
  @override
  final String wireValue;

  static TriggerType fromValue(String value) {
    for (final item in TriggerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerType value: $value');
  }
}
