/// Specifies the state of the policy, whether it is enabled or disabled.
enum ServerSecurityAlertPolicyState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ServerSecurityAlertPolicyState(this.wireValue);
  final String wireValue;

  static ServerSecurityAlertPolicyState fromValue(String value) {
    for (final item in ServerSecurityAlertPolicyState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerSecurityAlertPolicyState value: $value');
  }
}
