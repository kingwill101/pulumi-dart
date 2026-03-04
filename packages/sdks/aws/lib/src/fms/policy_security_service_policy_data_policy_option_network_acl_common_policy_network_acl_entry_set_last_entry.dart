// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_last_entry_icmp_type_code.dart';
import 'policy_security_service_policy_data_policy_option_network_acl_common_policy_network_acl_entry_set_last_entry_port_range.dart';

class PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry {
  /// A string value containing the IPv4 network range to allow or deny, in CIDR notation.
  final pulumi.Input<String>? cidrBlock;

  /// A boolean value, if true Firewall Manager creates egress rule. If false Firewall Manager creates ingress rule.
  final pulumi.Input<bool> egress;

  /// A configuration block for ICMP protocol: The ICMP type and code. See the `icmp_type_code` block.
  final pulumi.Input<
    List<
      PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode
    >
  >?
  icmpTypeCodes;

  /// A string value containing the IPv6 network range to allow or deny, in CIDR notation.
  final pulumi.Input<String>? ipv6CidrBlock;

  /// A configuration block for PortRange. See the `port_range` block.
  final pulumi.Input<
    List<
      PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange
    >
  >?
  portRanges;

  /// The protocol number. A value of "-1" means all protocols.
  final pulumi.Input<String> protocol;

  /// A string value that indicates whether to allow or deny the traffic that matches the rule. Valid values: `allow`, `deny`.
  final pulumi.Input<String> ruleAction;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry].
  /// [cidrBlock] A string value containing the IPv4 network range to allow or deny, in CIDR notation.
  /// [egress] A boolean value, if true Firewall Manager creates egress rule. If false Firewall Manager creates ingress rule.
  /// [icmpTypeCodes] A configuration block for ICMP protocol: The ICMP type and code. See the `icmp_type_code` block.
  /// [ipv6CidrBlock] A string value containing the IPv6 network range to allow or deny, in CIDR notation.
  /// [portRanges] A configuration block for PortRange. See the `port_range` block.
  /// [protocol] The protocol number. A value of "-1" means all protocols.
  /// [ruleAction] A string value that indicates whether to allow or deny the traffic that matches the rule. Valid values: `allow`, `deny`.
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
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'egress': egress,
      'icmpTypeCodes':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode
            >,
            List<Map<String, dynamic>>
          >(
            icmpTypeCodes,
            (value) =>
                pulumi.Input.encodeList<
                  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'portRanges':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange
            >,
            List<Map<String, dynamic>>
          >(
            portRanges,
            (value) =>
                pulumi.Input.encodeList<
                  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'protocol': protocol,
      'ruleAction': ruleAction,
    };
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry(
      cidrBlock: (() {
        final guardedValue = map['cidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      egress: pulumi.Input.fromValue(map['egress'] as bool),
      icmpTypeCodes: (() {
        final guardedValue = map['icmpTypeCodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode
          >(
            guardedValue,
            (value) =>
                PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      ipv6CidrBlock: (() {
        final guardedValue = map['ipv6CidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      portRanges: (() {
        final guardedValue = map['portRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange
          >(
            guardedValue,
            (value) =>
                PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      ruleAction: pulumi.Input.fromValue(map['ruleAction'] as String),
    );
  }
}
