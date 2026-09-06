import 'package:pulumi/pulumi.dart' as pulumi;

/// Ingress policy for the network.
enum PolicyRule implements pulumi.PulumiEnum<String> {
  valueDenyAll("DenyAll"),
  valueAllowAll("AllowAll"),
  valueAllowSameNamespace("AllowSameNamespace");

  const PolicyRule(this.wireValue);
  @override
  final String wireValue;

  static PolicyRule fromValue(String value) {
    for (final item in PolicyRule.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyRule value: $value');
  }
}
