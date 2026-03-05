/// The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced.
enum FirewallAllowAzureIpsState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const FirewallAllowAzureIpsState(this.wireValue);
  final String wireValue;

  static FirewallAllowAzureIpsState fromValue(String value) {
    for (final item in FirewallAllowAzureIpsState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallAllowAzureIpsState value: $value');
  }
}

