// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_security_service_policy_data_policy_option_network_acl_common_policy.dart';
import 'policy_security_service_policy_data_policy_option_network_firewall_policy.dart';
import 'policy_security_service_policy_data_policy_option_third_party_firewall_policy.dart';

class PolicySecurityServicePolicyDataPolicyOption {
  /// Network ACL rules applied across accounts in the AWS Organization. See the `networkAclCommonPolicy` block.
  final pulumi.Input<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy>? networkAclCommonPolicy;
  /// Network Firewall policy options that configure a centralized deployment model. See the `networkFirewallPolicy` block.
  final pulumi.Input<PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy>? networkFirewallPolicy;
  /// Third-party firewall policy options. See the `thirdPartyFirewallPolicy` block.
  final pulumi.Input<PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy>? thirdPartyFirewallPolicy;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOption].
  /// [networkAclCommonPolicy] Network ACL rules applied across accounts in the AWS Organization. See the `networkAclCommonPolicy` block.
  /// [networkFirewallPolicy] Network Firewall policy options that configure a centralized deployment model. See the `networkFirewallPolicy` block.
  /// [thirdPartyFirewallPolicy] Third-party firewall policy options. See the `thirdPartyFirewallPolicy` block.
  const PolicySecurityServicePolicyDataPolicyOption({
    this.networkAclCommonPolicy,
    this.networkFirewallPolicy,
    this.thirdPartyFirewallPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAclCommonPolicy': ?pulumi.Input.mapOptionalInputValue<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy, Map<String, dynamic>>(networkAclCommonPolicy, (value) => value.toMap()),
      'networkFirewallPolicy': ?pulumi.Input.mapOptionalInputValue<PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy, Map<String, dynamic>>(networkFirewallPolicy, (value) => value.toMap()),
      'thirdPartyFirewallPolicy': ?pulumi.Input.mapOptionalInputValue<PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy, Map<String, dynamic>>(thirdPartyFirewallPolicy, (value) => value.toMap()),
    };
  }

  factory PolicySecurityServicePolicyDataPolicyOption.fromMap(Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOption(
      networkAclCommonPolicy: (() { final guardedValue = map['networkAclCommonPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkFirewallPolicy: (() { final guardedValue = map['networkFirewallPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      thirdPartyFirewallPolicy: (() { final guardedValue = map['thirdPartyFirewallPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
