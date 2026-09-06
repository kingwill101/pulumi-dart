import 'package:pulumi/pulumi.dart' as pulumi;

/// Target destination.
enum StreamDestinationTarget implements pulumi.PulumiEnum<String> {
  mqtt("Mqtt"),
  storage("Storage");

  const StreamDestinationTarget(this.wireValue);
  @override
  final String wireValue;

  static StreamDestinationTarget fromValue(String value) {
    for (final item in StreamDestinationTarget.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StreamDestinationTarget value: $value');
  }
}
