// ignore_for_file: unused_element, unnecessary_cast

class PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy {
  /// Defines the deployment model to use for the third-party firewall policy. Valid values are `CENTRALIZED` and `DISTRIBUTED`.
  final String? firewallDeploymentModel;

  PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy({
    this.firewallDeploymentModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final firewallDeploymentModelValue = firewallDeploymentModel;
    if (firewallDeploymentModelValue != null) {
      map['firewallDeploymentModel'] = firewallDeploymentModelValue;
    }
    return map;
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy.fromMap(
      Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy(
      firewallDeploymentModel: map['firewallDeploymentModel'] == null
          ? null
          : map['firewallDeploymentModel'] as String,
    );
  }
}
