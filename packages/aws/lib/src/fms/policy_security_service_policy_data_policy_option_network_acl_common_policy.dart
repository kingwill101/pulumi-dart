// ignore_for_file: unused_element, unnecessary_cast

import 'policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set.dart';

class PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy {
  /// Defines NACL entries for Network ACL policy. See the `network_acl_entry_set` block.
  final PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet? networkAclEntrySet;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy].
  /// [networkAclEntrySet] Defines NACL entries for Network ACL policy. See the `network_acl_entry_set` block.
  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy({
    this.networkAclEntrySet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAclEntrySet': ?networkAclEntrySet == null ? null : networkAclEntrySet!.toMap(),
    };
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy.fromMap(Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy(
      networkAclEntrySet: map['networkAclEntrySet'] == null ? null : PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet.fromMap((map['networkAclEntrySet'] as Map).cast<String, dynamic>()),
    );
  }
}

