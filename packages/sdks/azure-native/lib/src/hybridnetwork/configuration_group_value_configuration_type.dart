import 'package:pulumi/pulumi.dart' as pulumi;

/// The value which indicates if configuration values are secrets
enum ConfigurationGroupValueConfigurationType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueSecret("Secret"),
  valueOpen("Open");

  const ConfigurationGroupValueConfigurationType(this.wireValue);
  @override
  final String wireValue;

  static ConfigurationGroupValueConfigurationType fromValue(String value) {
    for (final item in ConfigurationGroupValueConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigurationGroupValueConfigurationType value: $value');
  }
}
