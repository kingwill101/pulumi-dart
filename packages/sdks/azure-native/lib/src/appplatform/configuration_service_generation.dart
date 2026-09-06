import 'package:pulumi/pulumi.dart' as pulumi;

/// The generation of the Application Configuration Service.
enum ConfigurationServiceGeneration implements pulumi.PulumiEnum<String> {
  valueGen1("Gen1"),
  valueGen2("Gen2");

  const ConfigurationServiceGeneration(this.wireValue);
  @override
  final String wireValue;

  static ConfigurationServiceGeneration fromValue(String value) {
    for (final item in ConfigurationServiceGeneration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigurationServiceGeneration value: $value');
  }
}
