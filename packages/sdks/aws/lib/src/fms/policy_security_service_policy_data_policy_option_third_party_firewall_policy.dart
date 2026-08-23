// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy {
  /// Deployment model for the third-party firewall policy. Valid values are `CENTRALIZED` and `DISTRIBUTED`.
  final pulumi.Input<String>? firewallDeploymentModel;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy].
  /// [firewallDeploymentModel] Deployment model for the third-party firewall policy. Valid values are `CENTRALIZED` and `DISTRIBUTED`.
  const PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy({
    this.firewallDeploymentModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallDeploymentModel': ?firewallDeploymentModel,
    };
  }

  factory PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy.fromMap(Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy(
      firewallDeploymentModel: (() { final guardedValue = map['firewallDeploymentModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
