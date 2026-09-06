import 'package:pulumi/pulumi.dart' as pulumi;

/// Initiative enforcement (Enabled or Disabled).
enum Enforcement implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const Enforcement(this.wireValue);
  @override
  final String wireValue;

  static Enforcement fromValue(String value) {
    for (final item in Enforcement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Enforcement value: $value');
  }
}
