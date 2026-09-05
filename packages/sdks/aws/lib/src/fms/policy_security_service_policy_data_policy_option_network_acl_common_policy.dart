// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set.dart';

class PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy {
  /// Network ACL entries for the Network ACL policy. See the `networkAclEntrySet` block.
  final pulumi.Input<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet?>? networkAclEntrySet;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy].
  /// [networkAclEntrySet] Network ACL entries for the Network ACL policy. See the `networkAclEntrySet` block.
  const PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy({
    this.networkAclEntrySet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAclEntrySet': ?pulumi.Input.mapOptionalInputValue<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet, Map<String, dynamic>>(networkAclEntrySet, (value) => value.toMap()),
    };
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy.fromMap(Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy(
      networkAclEntrySet: (() { final guardedValue = map['networkAclEntrySet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
