/// The current state of the IP address firewall for this account.
enum FirewallState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const FirewallState(this.value);
  final String value;

  static FirewallState fromValue(String value) {
    for (final item in FirewallState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallState value: $value');
  }
}

