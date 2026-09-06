import 'package:pulumi/pulumi.dart' as pulumi;

/// The current status of trigger.
enum TriggerStatus implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const TriggerStatus(this.wireValue);
  @override
  final String wireValue;

  static TriggerStatus fromValue(String value) {
    for (final item in TriggerStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerStatus value: $value');
  }
}
