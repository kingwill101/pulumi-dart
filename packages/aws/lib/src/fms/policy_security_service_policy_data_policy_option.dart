// ignore_for_file: unused_element, unnecessary_cast

import 'policy_security_service_policy_data_policy_option_network_acl_common_policy.dart';
import 'policy_security_service_policy_data_policy_option_network_firewall_policy.dart';
import 'policy_security_service_policy_data_policy_option_third_party_firewall_policy.dart';

class PolicySecurityServicePolicyDataPolicyOption {
  /// Defines NACL rules across accounts in their AWS Organization. See the `network_acl_common_policy` block.
  final PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy?
      networkAclCommonPolicy;

  /// Defines the deployment model to use for the firewall policy.  See the `network_firewall_policy` block.
  final PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy?
      networkFirewallPolicy;
  final PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy?
      thirdPartyFirewallPolicy;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOption].
  /// [networkAclCommonPolicy] Defines NACL rules across accounts in their AWS Organization. See the `network_acl_common_policy` block.
  /// [networkFirewallPolicy] Defines the deployment model to use for the firewall policy.  See the `network_firewall_policy` block.
  /// [thirdPartyFirewallPolicy] Optional.
  PolicySecurityServicePolicyDataPolicyOption({
    this.networkAclCommonPolicy,
    this.networkFirewallPolicy,
    this.thirdPartyFirewallPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkAclCommonPolicyValue = networkAclCommonPolicy;
    if (networkAclCommonPolicyValue != null) {
      map['networkAclCommonPolicy'] = networkAclCommonPolicyValue.toMap();
    }
    final networkFirewallPolicyValue = networkFirewallPolicy;
    if (networkFirewallPolicyValue != null) {
      map['networkFirewallPolicy'] = networkFirewallPolicyValue.toMap();
    }
    final thirdPartyFirewallPolicyValue = thirdPartyFirewallPolicy;
    if (thirdPartyFirewallPolicyValue != null) {
      map['thirdPartyFirewallPolicy'] = thirdPartyFirewallPolicyValue.toMap();
    }
    return map;
  }

  factory PolicySecurityServicePolicyDataPolicyOption.fromMap(
      Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOption(
      networkAclCommonPolicy: map['networkAclCommonPolicy'] == null
          ? null
          : PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy
              .fromMap((map['networkAclCommonPolicy'] as Map)
                  .cast<String, dynamic>()),
      networkFirewallPolicy: map['networkFirewallPolicy'] == null
          ? null
          : PolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy
              .fromMap((map['networkFirewallPolicy'] as Map)
                  .cast<String, dynamic>()),
      thirdPartyFirewallPolicy: map['thirdPartyFirewallPolicy'] == null
          ? null
          : PolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy
              .fromMap((map['thirdPartyFirewallPolicy'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
