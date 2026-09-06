import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the status of the configuration.
enum IntelligentTieringConfigurationStatus implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const IntelligentTieringConfigurationStatus(this.wireValue);
  @override
  final String wireValue;

  static IntelligentTieringConfigurationStatus fromValue(String value) {
    for (final item in IntelligentTieringConfigurationStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntelligentTieringConfigurationStatus value: $value');
  }
}
