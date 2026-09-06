import 'package:pulumi/pulumi.dart' as pulumi;

/// Kind of synchronization on trigger.
enum TriggerKind implements pulumi.PulumiEnum<String> {
  valueScheduleBased("ScheduleBased");

  const TriggerKind(this.wireValue);
  @override
  final String wireValue;

  static TriggerKind fromValue(String value) {
    for (final item in TriggerKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerKind value: $value');
  }
}
