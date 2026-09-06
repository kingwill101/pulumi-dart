import 'package:pulumi/pulumi.dart' as pulumi;

/// Target destination.
enum EventDestinationTarget implements pulumi.PulumiEnum<String> {
  mqtt("Mqtt"),
  storage("Storage");

  const EventDestinationTarget(this.wireValue);
  @override
  final String wireValue;

  static EventDestinationTarget fromValue(String value) {
    for (final item in EventDestinationTarget.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventDestinationTarget value: $value');
  }
}
