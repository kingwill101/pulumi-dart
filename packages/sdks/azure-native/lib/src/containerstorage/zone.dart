import 'package:pulumi/pulumi.dart' as pulumi;

/// Availability Zones
enum Zone implements pulumi.PulumiEnum<String> {
  zone1("1"),
  zone2("2"),
  zone3("3");

  const Zone(this.wireValue);
  @override
  final String wireValue;

  static Zone fromValue(String value) {
    for (final item in Zone.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Zone value: $value');
  }
}
