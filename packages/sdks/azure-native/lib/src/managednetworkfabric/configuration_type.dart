import 'package:pulumi/pulumi.dart' as pulumi;

/// Input method to configure Network Tap Rule.
enum ConfigurationType implements pulumi.PulumiEnum<String> {
  valueFile("File"),
  valueInline("Inline");

  const ConfigurationType(this.wireValue);
  @override
  final String wireValue;

  static ConfigurationType fromValue(String value) {
    for (final item in ConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigurationType value: $value');
  }
}
