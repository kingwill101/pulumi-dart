/// The state of the policy.
enum WebApplicationFirewallEnabledState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const WebApplicationFirewallEnabledState(this.value);
  final String value;

  static WebApplicationFirewallEnabledState fromValue(String value) {
    for (final item in WebApplicationFirewallEnabledState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallEnabledState value: $value');
  }
}

