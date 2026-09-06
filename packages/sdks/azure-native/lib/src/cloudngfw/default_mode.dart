import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode for default rules creation
enum DefaultMode implements pulumi.PulumiEnum<String> {
  valueIPS("IPS"),
  valueFIREWALL("FIREWALL"),
  valueNONE("NONE");

  const DefaultMode(this.wireValue);
  @override
  final String wireValue;

  static DefaultMode fromValue(String value) {
    for (final item in DefaultMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultMode value: $value');
  }
}
