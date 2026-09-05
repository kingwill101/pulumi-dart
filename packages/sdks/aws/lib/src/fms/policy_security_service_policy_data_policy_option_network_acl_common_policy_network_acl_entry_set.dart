// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_first_entry.dart';
import 'policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_last_entry.dart';

class PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet {
  /// Rules to run first in the Firewall Manager managed network ACLs. Firewall Manager creates entries with ID value between 1 and 5000. See the `firstEntry` block.
  final pulumi.Input<List<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry>?>? firstEntries;
  /// Whether Firewall Manager applies this setting to first-entry policy violations that involve conflicts between the custom entries and the policy entries. If `false`, Firewall Manager marks the network ACL as noncompliant and does not try to remediate.
  final pulumi.Input<bool> forceRemediateForFirstEntries;
  /// Whether Firewall Manager applies this setting to last-entry policy violations that involve conflicts between the custom entries and the policy entries. If `false`, Firewall Manager marks the network ACL as noncompliant and does not try to remediate.
  final pulumi.Input<bool> forceRemediateForLastEntries;
  /// Rules to run last in the Firewall Manager managed network ACLs. Firewall Manager creates entries with ID value between 32000 and 32766. See the `lastEntry` block.
  final pulumi.Input<List<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry>?>? lastEntries;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet].
  /// [firstEntries] Rules to run first in the Firewall Manager managed network ACLs. Firewall Manager creates entries with ID value between 1 and 5000. See the `firstEntry` block.
  /// [forceRemediateForFirstEntries] Whether Firewall Manager applies this setting to first-entry policy violations that involve conflicts between the custom entries and the policy entries. If `false`, Firewall Manager marks the network ACL as noncompliant and does not try to remediate.
  /// [forceRemediateForLastEntries] Whether Firewall Manager applies this setting to last-entry policy violations that involve conflicts between the custom entries and the policy entries. If `false`, Firewall Manager marks the network ACL as noncompliant and does not try to remediate.
  /// [lastEntries] Rules to run last in the Firewall Manager managed network ACLs. Firewall Manager creates entries with ID value between 32000 and 32766. See the `lastEntry` block.
  const PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet({
    this.firstEntries,
    required this.forceRemediateForFirstEntries,
    required this.forceRemediateForLastEntries,
    this.lastEntries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstEntries': ?pulumi.Input.mapOptionalInputValue<List<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry>, List<Map<String, dynamic>>>(firstEntries, (value) => pulumi.Input.encodeList<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceRemediateForFirstEntries': forceRemediateForFirstEntries,
      'forceRemediateForLastEntries': forceRemediateForLastEntries,
      'lastEntries': ?pulumi.Input.mapOptionalInputValue<List<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry>, List<Map<String, dynamic>>>(lastEntries, (value) => pulumi.Input.encodeList<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet.fromMap(Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet(
      firstEntries: (() { final guardedValue = map['firstEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry>(guardedValue, (value) => PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      forceRemediateForFirstEntries: pulumi.Input.fromValue(map['forceRemediateForFirstEntries'] as bool),
      forceRemediateForLastEntries: pulumi.Input.fromValue(map['forceRemediateForLastEntries'] as bool),
      lastEntries: (() { final guardedValue = map['lastEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry>(guardedValue, (value) => PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
