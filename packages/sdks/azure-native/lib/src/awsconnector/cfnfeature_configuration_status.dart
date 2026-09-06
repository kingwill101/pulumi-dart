import 'package:pulumi/pulumi.dart' as pulumi;

/// Property status
enum CFNFeatureConfigurationStatus implements pulumi.PulumiEnum<String> {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const CFNFeatureConfigurationStatus(this.wireValue);
  @override
  final String wireValue;

  static CFNFeatureConfigurationStatus fromValue(String value) {
    for (final item in CFNFeatureConfigurationStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CFNFeatureConfigurationStatus value: $value');
  }
}
