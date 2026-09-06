import 'package:pulumi/pulumi.dart' as pulumi;

/// Trigger Kind.
enum TriggerEventType implements pulumi.PulumiEnum<String> {
  valueFileEvent("FileEvent"),
  valuePeriodicTimerEvent("PeriodicTimerEvent");

  const TriggerEventType(this.wireValue);
  @override
  final String wireValue;

  static TriggerEventType fromValue(String value) {
    for (final item in TriggerEventType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerEventType value: $value');
  }
}
