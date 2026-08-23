/// The value that indicates whether the policy is enabled or not.
enum AzureADAuthenticationAsArmPolicyStatus {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const AzureADAuthenticationAsArmPolicyStatus(this.wireValue);
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
