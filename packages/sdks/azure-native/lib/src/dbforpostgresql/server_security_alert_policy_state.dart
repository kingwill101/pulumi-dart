/// Specifies the state of the policy, whether it is enabled or disabled.
enum ServerSecurityAlertPolicyState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ServerSecurityAlertPolicyState(this.value);
  final String value;

  static ServerSecurityAlertPolicyState fromValue(String value) {
    for (final item in ServerSecurityAlertPolicyState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerSecurityAlertPolicyState value: $value');
  }
}

