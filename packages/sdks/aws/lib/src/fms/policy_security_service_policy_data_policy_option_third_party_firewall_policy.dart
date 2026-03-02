// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy {
  /// Defines the deployment model to use for the third-party firewall policy. Valid values are `CENTRALIZED` and `DISTRIBUTED`.
  final pulumi.Input<String>? firewallDeploymentModel;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy].
  /// [firewallDeploymentModel] Defines the deployment model to use for the third-party firewall policy. Valid values are `CENTRALIZED` and `DISTRIBUTED`.
  PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy({
    this.firewallDeploymentModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallDeploymentModel': ?firewallDeploymentModel,
    };
  }

  factory PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy.fromMap(Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy(
      firewallDeploymentModel: map['firewallDeploymentModel'] == null ? null : ((map['firewallDeploymentModel'] as String).input()).input(),
    );
  }
}

