// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_first_entry/policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_first_entry.dart';
import '../policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_last_entry/policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_last_entry.dart';

class PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet {
  /// The rules that you want to run first in the Firewall Manager managed network ACLs. Firewall manager creates entries with ID value between 1 and 5000. See the `first_entry` block.
  final List<
          PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry>?
      firstEntries;

  /// A boolean value, if true Firewall Manager uses this setting when it finds policy violations that involve conflicts between the custom entries and the policy entries. If false Firewall Manager marks the network ACL as noncompliant and does not try to remediate.
  final bool forceRemediateForFirstEntries;

  /// A boolean value, if true Firewall Manager uses this setting when it finds policy violations that involve conflicts between the custom entries and the policy entries. If false Firewall Manager marks the network ACL as noncompliant and does not try to remediate.
  final bool forceRemediateForLastEntries;

  /// The rules that you want to run last in the Firewall Manager managed network ACLs. Firewall manager creates entries with ID value between 32000 and 32766. See the `last_entry` block.
  final List<
          PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry>?
      lastEntries;

  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet({
    this.firstEntries,
    required this.forceRemediateForFirstEntries,
    required this.forceRemediateForLastEntries,
    this.lastEntries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final firstEntriesValue = firstEntries;
    if (firstEntriesValue != null) {
      map['firstEntries'] = pulumi.Input.encodeList<
          PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry,
          Map<String, dynamic>>(firstEntriesValue, (value) => value.toMap());
    }
    map['forceRemediateForFirstEntries'] = forceRemediateForFirstEntries;
    map['forceRemediateForLastEntries'] = forceRemediateForLastEntries;
    final lastEntriesValue = lastEntries;
    if (lastEntriesValue != null) {
      map['lastEntries'] = pulumi.Input.encodeList<
          PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry,
          Map<String, dynamic>>(lastEntriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet.fromMap(
      Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet(
      firstEntries: map['firstEntries'] == null
          ? null
          : pulumi.Input.decodeList<
                  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry>(
              map['firstEntries'],
              (value) =>
                  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry
                      .fromMap((value as Map).cast<String, dynamic>())),
      forceRemediateForFirstEntries:
          map['forceRemediateForFirstEntries'] as bool,
      forceRemediateForLastEntries: map['forceRemediateForLastEntries'] as bool,
      lastEntries: map['lastEntries'] == null
          ? null
          : pulumi.Input.decodeList<
                  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry>(
              map['lastEntries'],
              (value) =>
                  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
