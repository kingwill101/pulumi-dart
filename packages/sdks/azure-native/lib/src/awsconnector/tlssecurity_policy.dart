import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum TLSSecurityPolicy implements pulumi.PulumiEnum<String> {
  policyMinTLS10201907("Policy-Min-TLS-1-0-2019-07"),
  policyMinTLS12201907("Policy-Min-TLS-1-2-2019-07"),
  policyMinTLS12PFS202310("Policy-Min-TLS-1-2-PFS-2023-10");

  const TLSSecurityPolicy(this.wireValue);
  @override
  final String wireValue;

  static TLSSecurityPolicy fromValue(String value) {
    for (final item in TLSSecurityPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TLSSecurityPolicy value: $value');
  }
}
