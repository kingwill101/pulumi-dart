import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of trust policy.
enum TrustPolicyType implements pulumi.PulumiEnum<String> {
  valueNotary("Notary");

  const TrustPolicyType(this.wireValue);
  @override
  final String wireValue;

  static TrustPolicyType fromValue(String value) {
    for (final item in TrustPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrustPolicyType value: $value');
  }
}
