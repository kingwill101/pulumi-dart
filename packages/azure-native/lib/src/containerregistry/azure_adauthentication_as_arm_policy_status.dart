/// The value that indicates whether the policy is enabled or not.
enum AzureADAuthenticationAsArmPolicyStatus {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const AzureADAuthenticationAsArmPolicyStatus(this.value);
  final String value;

  static AzureADAuthenticationAsArmPolicyStatus fromValue(String value) {
    for (final item in AzureADAuthenticationAsArmPolicyStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureADAuthenticationAsArmPolicyStatus value: $value');
  }
}

