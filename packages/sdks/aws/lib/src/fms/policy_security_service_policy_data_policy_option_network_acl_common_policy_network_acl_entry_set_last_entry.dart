// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_last_entry_icmp_type_code.dart';
import 'policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_last_entry_port_range.dart';

class PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry {
  /// IPv4 network range to allow or deny, in CIDR notation.
  final pulumi.Input<String>? cidrBlock;
  /// Whether Firewall Manager creates an egress rule. If `false`, Firewall Manager creates an ingress rule.
  final pulumi.Input<bool> egress;
  /// ICMP protocol configuration specifying the ICMP type and code. See the `icmpTypeCode` block.
  final pulumi.Input<List<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode>>? icmpTypeCodes;
  /// IPv6 network range to allow or deny, in CIDR notation.
  final pulumi.Input<String>? ipv6CidrBlock;
  /// Port range configuration for the rule. See the `portRange` block.
  final pulumi.Input<List<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange>>? portRanges;
  /// Protocol number. A value of `-1` means all protocols.
  final pulumi.Input<String> protocol;
  /// Whether to allow or deny the traffic that matches the rule. Valid values: `allow`, `deny`.
  final pulumi.Input<String> ruleAction;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry].
  /// [cidrBlock] IPv4 network range to allow or deny, in CIDR notation.
  /// [egress] Whether Firewall Manager creates an egress rule. If `false`, Firewall Manager creates an ingress rule.
  /// [icmpTypeCodes] ICMP protocol configuration specifying the ICMP type and code. See the `icmpTypeCode` block.
  /// [ipv6CidrBlock] IPv6 network range to allow or deny, in CIDR notation.
  /// [portRanges] Port range configuration for the rule. See the `portRange` block.
  /// [protocol] Protocol number. A value of `-1` means all protocols.
  /// [ruleAction] Whether to allow or deny the traffic that matches the rule. Valid values: `allow`, `deny`.
  const PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry({
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
      'icmpTypeCodes': ?pulumi.Input.mapOptionalInputValue<List<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode>, List<Map<String, dynamic>>>(icmpTypeCodes, (value) => pulumi.Input.encodeList<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'portRanges': ?pulumi.Input.mapOptionalInputValue<List<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': protocol,
      'ruleAction': ruleAction,
    };
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry.fromMap(Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry(
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egress: pulumi.Input.fromValue(map['egress'] as bool),
      icmpTypeCodes: (() { final guardedValue = map['icmpTypeCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode>(guardedValue, (value) => PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6CidrBlock: (() { final guardedValue = map['ipv6CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portRanges: (() { final guardedValue = map['portRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange>(guardedValue, (value) => PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      ruleAction: pulumi.Input.fromValue(map['ruleAction'] as String),
    );
  }
}
