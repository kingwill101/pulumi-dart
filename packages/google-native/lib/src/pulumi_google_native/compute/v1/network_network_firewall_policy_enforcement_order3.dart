/// The network firewall policy enforcement order. Can be either AFTER_CLASSIC_FIREWALL or BEFORE_CLASSIC_FIREWALL. Defaults to AFTER_CLASSIC_FIREWALL if the field is not specified.
enum NetworkNetworkFirewallPolicyEnforcementOrder3 {
  afterClassicFirewall("AFTER_CLASSIC_FIREWALL"),
  beforeClassicFirewall("BEFORE_CLASSIC_FIREWALL");

  const NetworkNetworkFirewallPolicyEnforcementOrder3(this.value);
  final String value;

  static NetworkNetworkFirewallPolicyEnforcementOrder3 fromValue(String value) {
    for (final item in NetworkNetworkFirewallPolicyEnforcementOrder3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkNetworkFirewallPolicyEnforcementOrder3 value: $value');
  }
}
