// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy {
  /// Deployment model for the firewall policy. To use a distributed model, remove the `policyOption` section. Valid values are `CENTRALIZED` and `DISTRIBUTED`.
  final pulumi.Input<String>? firewallDeploymentModel;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy].
  /// [firewallDeploymentModel] Deployment model for the firewall policy. To use a distributed model, remove the `policyOption` section. Valid values are `CENTRALIZED` and `DISTRIBUTED`.
  const PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy({
    this.firewallDeploymentModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallDeploymentModel': ?firewallDeploymentModel,
    };
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy.fromMap(Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy(
      firewallDeploymentModel: (() { final guardedValue = map['firewallDeploymentModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
