// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_first_entry_icmp_type_code.dart';
import 'policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_first_entry_port_range.dart';

class PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry {
  /// A string value containing the IPv4 network range to allow or deny, in CIDR notation.
  final String? cidrBlock;

  /// A boolean value, if true Firewall Manager creates egress rule. If false Firewall Manager creates ingress rule.
  final bool egress;

  /// A configuration block for ICMP protocol: The ICMP type and code. See the `icmp_type_code` block.
  final List<
    PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryIcmpTypeCode
  >?
  icmpTypeCodes;

  /// A string value containing the IPv6 network range to allow or deny, in CIDR notation.
  final String? ipv6CidrBlock;

  /// A configuration block for PortRange. See the `port_range` block.
  final List<
    PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryPortRange
  >?
  portRanges;

  /// The protocol number. A value of "-1" means all protocols.
  final String protocol;

  /// A string value that indicates whether to allow or deny the traffic that matches the rule. Valid values: `allow`, `deny`.
  final String ruleAction;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry].
  /// [cidrBlock] A string value containing the IPv4 network range to allow or deny, in CIDR notation.
  /// [egress] A boolean value, if true Firewall Manager creates egress rule. If false Firewall Manager creates ingress rule.
  /// [icmpTypeCodes] A configuration block for ICMP protocol: The ICMP type and code. See the `icmp_type_code` block.
  /// [ipv6CidrBlock] A string value containing the IPv6 network range to allow or deny, in CIDR notation.
  /// [portRanges] A configuration block for PortRange. See the `port_range` block.
  /// [protocol] The protocol number. A value of "-1" means all protocols.
  /// [ruleAction] A string value that indicates whether to allow or deny the traffic that matches the rule. Valid values: `allow`, `deny`.
  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry({
    this.cidrBlock,
    required this.egress,
    this.icmpTypeCodes,
    this.ipv6CidrBlock,
    this.portRanges,
    required this.protocol,
    required this.ruleAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'egress': egress,
      'icmpTypeCodes': ?icmpTypeCodes == null
          ? null
          : pulumi.Input.encodeList<
              PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryIcmpTypeCode,
              Map<String, dynamic>
            >(icmpTypeCodes!, (value) => value.toMap()),
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'portRanges': ?portRanges == null
          ? null
          : pulumi.Input.encodeList<
              PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryPortRange,
              Map<String, dynamic>
            >(portRanges!, (value) => value.toMap()),
      'protocol': protocol,
      'ruleAction': ruleAction,
    };
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry(
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      egress: map['egress'] as bool,
      icmpTypeCodes: map['icmpTypeCodes'] == null
          ? null
          : pulumi.Input.decodeList<
              PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryIcmpTypeCode
            >(
              map['icmpTypeCodes'],
              (value) =>
                  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryIcmpTypeCode.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null
          ? null
          : map['ipv6CidrBlock'] as String,
      portRanges: map['portRanges'] == null
          ? null
          : pulumi.Input.decodeList<
              PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryPortRange
            >(
              map['portRanges'],
              (value) =>
                  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryPortRange.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      protocol: map['protocol'] as String,
      ruleAction: map['ruleAction'] as String,
    );
  }
}
