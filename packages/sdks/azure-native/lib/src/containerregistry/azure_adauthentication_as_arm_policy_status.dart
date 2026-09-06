import 'package:pulumi/pulumi.dart' as pulumi;

/// The value that indicates whether the policy is enabled or not.
enum AzureADAuthenticationAsArmPolicyStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const AzureADAuthenticationAsArmPolicyStatus(this.wireValue);
  @override
  final String wireValue;

  static AzureADAuthenticationAsArmPolicyStatus fromValue(String value) {
    for (final item in AzureADAuthenticationAsArmPolicyStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureADAuthenticationAsArmPolicyStatus value: $value');
  }
}
