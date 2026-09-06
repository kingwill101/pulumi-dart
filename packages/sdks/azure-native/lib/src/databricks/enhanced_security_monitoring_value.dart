import 'package:pulumi/pulumi.dart' as pulumi;

enum EnhancedSecurityMonitoringValue implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const EnhancedSecurityMonitoringValue(this.wireValue);
  @override
  final String wireValue;

  static EnhancedSecurityMonitoringValue fromValue(String value) {
    for (final item in EnhancedSecurityMonitoringValue.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnhancedSecurityMonitoringValue value: $value');
  }
}
