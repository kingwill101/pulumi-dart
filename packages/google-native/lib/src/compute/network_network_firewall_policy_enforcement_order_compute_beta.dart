/// The network firewall policy enforcement order. Can be either AFTER_CLASSIC_FIREWALL or BEFORE_CLASSIC_FIREWALL. Defaults to AFTER_CLASSIC_FIREWALL if the field is not specified.
enum NetworkNetworkFirewallPolicyEnforcementOrderComputeBeta {
  afterClassicFirewall("AFTER_CLASSIC_FIREWALL"),
  beforeClassicFirewall("BEFORE_CLASSIC_FIREWALL");

  const NetworkNetworkFirewallPolicyEnforcementOrderComputeBeta(this.value);
  final String value;

  static NetworkNetworkFirewallPolicyEnforcementOrderComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in NetworkNetworkFirewallPolicyEnforcementOrderComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkNetworkFirewallPolicyEnforcementOrderComputeBeta value: $value',
    );
  }
}
