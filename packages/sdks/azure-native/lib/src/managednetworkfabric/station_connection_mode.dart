import 'package:pulumi/pulumi.dart' as pulumi;

/// Station Connection Mode.
enum StationConnectionMode implements pulumi.PulumiEnum<String> {
  active("Active"),
  passive("Passive");

  const StationConnectionMode(this.wireValue);
  @override
  final String wireValue;

  static StationConnectionMode fromValue(String value) {
    for (final item in StationConnectionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StationConnectionMode value: $value');
  }
}
