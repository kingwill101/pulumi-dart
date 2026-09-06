import 'package:pulumi/pulumi.dart' as pulumi;

enum ComplianceSecurityProfileValue implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const ComplianceSecurityProfileValue(this.wireValue);
  @override
  final String wireValue;

  static ComplianceSecurityProfileValue fromValue(String value) {
    for (final item in ComplianceSecurityProfileValue.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComplianceSecurityProfileValue value: $value');
  }
}
