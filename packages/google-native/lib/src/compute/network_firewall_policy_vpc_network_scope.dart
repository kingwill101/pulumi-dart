/// The scope of networks allowed to be associated with the firewall policy. This field can be either GLOBAL_VPC_NETWORK or REGIONAL_VPC_NETWORK. A firewall policy with the VPC scope set to GLOBAL_VPC_NETWORK is allowed to be attached only to global networks. When the VPC scope is set to REGIONAL_VPC_NETWORK the firewall policy is allowed to be attached only to regional networks in the same scope as the firewall policy. Note: if not specified then GLOBAL_VPC_NETWORK will be used.
enum NetworkFirewallPolicyVpcNetworkScope {
  globalVpcNetwork("GLOBAL_VPC_NETWORK"),
  regionalVpcNetwork("REGIONAL_VPC_NETWORK");

  const NetworkFirewallPolicyVpcNetworkScope(this.value);
  final String value;

  static NetworkFirewallPolicyVpcNetworkScope fromValue(String value) {
    for (final item in NetworkFirewallPolicyVpcNetworkScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkFirewallPolicyVpcNetworkScope value: $value',
    );
  }
}
