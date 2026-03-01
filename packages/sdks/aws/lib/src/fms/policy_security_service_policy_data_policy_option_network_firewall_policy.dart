// ignore_for_file: unused_element, unnecessary_cast


class PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy {
  /// Defines the deployment model to use for the third-party firewall policy. Valid values are `CENTRALIZED` and `DISTRIBUTED`.
  final String? firewallDeploymentModel;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy].
  /// [firewallDeploymentModel] Defines the deployment model to use for the third-party firewall policy. Valid values are `CENTRALIZED` and `DISTRIBUTED`.
  PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy({
    this.firewallDeploymentModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallDeploymentModel': ?firewallDeploymentModel,
    };
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy.fromMap(Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy(
      firewallDeploymentModel: map['firewallDeploymentModel'] == null ? null : map['firewallDeploymentModel'] as String,
    );
  }
}

