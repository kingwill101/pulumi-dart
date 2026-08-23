// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_environment_transit_gateway_configuration_attachment_network_acl_configuration_icmp_type_code.dart';
import 'kx_environment_transit_gateway_configuration_attachment_network_acl_configuration_port_range.dart';

class KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration {
  /// IPv4 network range to allow or deny, in CIDR notation. The specified CIDR block is modified to its canonical form. For example, `100.68.0.18/18` will be converted to `100.68.0.0/18`.
  final pulumi.Input<String> cidrBlock;
  /// ICMP protocol that consists of the ICMP type and code. Defined below.
  final pulumi.Input<KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode>? icmpTypeCode;
  /// Range of ports the rule applies to. Defined below.
  final pulumi.Input<KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange>? portRange;
  /// Protocol number. A value of `1` means all the protocols.
  final pulumi.Input<String> protocol;
  /// Whether to `allow` or `deny` the traffic that matches the rule.
  final pulumi.Input<String> ruleAction;
  /// Rule number for the entry. All the network ACL entries are processed in ascending order by rule number.
  final pulumi.Input<int> ruleNumber;

  /// Creates a new [KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration].
  /// [cidrBlock] IPv4 network range to allow or deny, in CIDR notation. The specified CIDR block is modified to its canonical form. For example, `100.68.0.18/18` will be converted to `100.68.0.0/18`.
  /// [icmpTypeCode] ICMP protocol that consists of the ICMP type and code. Defined below.
  /// [portRange] Range of ports the rule applies to. Defined below.
  /// [protocol] Protocol number. A value of `1` means all the protocols.
  /// [ruleAction] Whether to `allow` or `deny` the traffic that matches the rule.
  /// [ruleNumber] Rule number for the entry. All the network ACL entries are processed in ascending order by rule number.
  const KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration({
    required this.cidrBlock,
    this.icmpTypeCode,
    this.portRange,
    required this.protocol,
    required this.ruleAction,
    required this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'icmpTypeCode': ?pulumi.Input.mapOptionalInputValue<KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode, Map<String, dynamic>>(icmpTypeCode, (value) => value.toMap()),
      'portRange': ?pulumi.Input.mapOptionalInputValue<KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange, Map<String, dynamic>>(portRange, (value) => value.toMap()),
      'protocol': protocol,
      'ruleAction': ruleAction,
      'ruleNumber': ruleNumber,
    };
  }

  factory KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration.fromMap(Map<String, dynamic> map) {
    return KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      icmpTypeCode: (() { final guardedValue = map['icmpTypeCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      portRange: (() { final guardedValue = map['portRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      ruleAction: pulumi.Input.fromValue(map['ruleAction'] as String),
      ruleNumber: pulumi.Input.fromValue(map['ruleNumber'] as int),
    );
  }
}
