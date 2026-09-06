import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode of enablement for localDNS.
enum LocalDNSMode implements pulumi.PulumiEnum<String> {
  valuePreferred("Preferred"),
  valueRequired("Required"),
  valueDisabled("Disabled");

  const LocalDNSMode(this.wireValue);
  @override
  final String wireValue;

  static LocalDNSMode fromValue(String value) {
    for (final item in LocalDNSMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDNSMode value: $value');
  }
}
