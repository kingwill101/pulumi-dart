import 'package:pulumi/pulumi.dart' as pulumi;

/// Source of the configuration.
enum ConfigurationSource implements pulumi.PulumiEnum<String> {
  valueSystemDefault("system-default"),
  valueUserOverride("user-override");

  const ConfigurationSource(this.wireValue);
  @override
  final String wireValue;

  static ConfigurationSource fromValue(String value) {
    for (final item in ConfigurationSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigurationSource value: $value');
  }
}
