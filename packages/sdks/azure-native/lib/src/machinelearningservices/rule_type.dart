import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of a managed network Outbound Rule of a machine learning workspace.
enum RuleType implements pulumi.PulumiEnum<String> {
  fQDN("FQDN"),
  privateEndpoint("PrivateEndpoint"),
  serviceTag("ServiceTag");

  const RuleType(this.wireValue);
  @override
  final String wireValue;

  static RuleType fromValue(String value) {
    for (final item in RuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleType value: $value');
  }
}
