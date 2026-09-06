import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the spark config.
enum ConfigurationType implements pulumi.PulumiEnum<String> {
  default_("Default"),
  customized("Customized"),
  artifact("Artifact");

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
