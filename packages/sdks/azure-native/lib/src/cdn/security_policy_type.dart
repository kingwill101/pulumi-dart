import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the Security policy to create.
enum SecurityPolicyType implements pulumi.PulumiEnum<String> {
  webApplicationFirewall("WebApplicationFirewall");

  const SecurityPolicyType(this.wireValue);
  @override
  final String wireValue;

  static SecurityPolicyType fromValue(String value) {
    for (final item in SecurityPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyType value: $value');
  }
}
