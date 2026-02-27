// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_last_entry_icmp_type_code/policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_last_entry_icmp_type_code.dart';
import '../policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_last_entry_port_range/policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_last_entry_port_range.dart';

class PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry {
  /// A string value containing the IPv4 network range to allow or deny, in CIDR notation.
  final String? cidrBlock;

  /// A boolean value, if true Firewall Manager creates egress rule. If false Firewall Manager creates ingress rule.
  final bool egress;

  /// A configuration block for ICMP protocol: The ICMP type and code. See the `icmp_type_code` block.
  final List<
          PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode>?
      icmpTypeCodes;

  /// A string value containing the IPv6 network range to allow or deny, in CIDR notation.
  final String? ipv6CidrBlock;

  /// A configuration block for PortRange. See the `port_range` block.
  final List<
          PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange>?
      portRanges;

  /// The protocol number. A value of "-1" means all protocols.
  final String protocol;

  /// A string value that indicates whether to allow or deny the traffic that matches the rule. Valid values: `allow`, `deny`.
  final String ruleAction;

  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry({
    this.cidrBlock,
    required this.egress,
    this.icmpTypeCodes,
    this.ipv6CidrBlock,
    this.portRanges,
    required this.protocol,
    required this.ruleAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    map['egress'] = egress;
    final icmpTypeCodesValue = icmpTypeCodes;
    if (icmpTypeCodesValue != null) {
      map['icmpTypeCodes'] = Input.encodeList<
          PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode,
          Map<String, dynamic>>(icmpTypeCodesValue, (value) => value.toMap());
    }
    final ipv6CidrBlockValue = ipv6CidrBlock;
    if (ipv6CidrBlockValue != null) {
      map['ipv6CidrBlock'] = ipv6CidrBlockValue;
    }
    final portRangesValue = portRanges;
    if (portRangesValue != null) {
      map['portRanges'] = Input.encodeList<
          PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange,
          Map<String, dynamic>>(portRangesValue, (value) => value.toMap());
    }
    map['protocol'] = protocol;
    map['ruleAction'] = ruleAction;
    return map;
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry.fromMap(
      Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry(
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      egress: map['egress'] as bool,
      icmpTypeCodes: map['icmpTypeCodes'] == null
          ? null
          : Input.decodeList<
                  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode>(
              map['icmpTypeCodes'],
              (value) =>
                  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode
                      .fromMap((value as Map).cast<String, dynamic>())),
      ipv6CidrBlock:
          map['ipv6CidrBlock'] == null ? null : map['ipv6CidrBlock'] as String,
      portRanges: map['portRanges'] == null
          ? null
          : Input.decodeList<
                  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange>(
              map['portRanges'],
              (value) =>
                  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange
                      .fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] as String,
      ruleAction: map['ruleAction'] as String,
    );
  }
}
