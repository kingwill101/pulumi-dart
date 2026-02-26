// ignore_for_file: unused_element, unnecessary_cast

import '../kx_environment_transit_gateway_configuration_attachment_network_acl_configuration_icmp_type_code/kx_environment_transit_gateway_configuration_attachment_network_acl_configuration_icmp_type_code.dart';
import '../kx_environment_transit_gateway_configuration_attachment_network_acl_configuration_port_range/kx_environment_transit_gateway_configuration_attachment_network_acl_configuration_port_range.dart';

class KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration {
  /// The IPv4 network range to allow or deny, in CIDR notation. The specified CIDR block is modified to its canonical form. For example, `100.68.0.18/18` will be converted to `100.68.0.0/18`.
  final String cidrBlock;

  /// Defines the ICMP protocol that consists of the ICMP type and code. Defined below.
  final KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode?
      icmpTypeCode;

  /// Range of ports the rule applies to. Defined below.
  final KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange?
      portRange;

  /// Protocol number. A value of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> means all the protocols.
  final String protocol;

  /// Indicates whether to <span pulumi-lang-nodejs="`allow`" pulumi-lang-dotnet="`Allow`" pulumi-lang-go="`allow`" pulumi-lang-python="`allow`" pulumi-lang-yaml="`allow`" pulumi-lang-java="`allow`">`allow`</span> or <span pulumi-lang-nodejs="`deny`" pulumi-lang-dotnet="`Deny`" pulumi-lang-go="`deny`" pulumi-lang-python="`deny`" pulumi-lang-yaml="`deny`" pulumi-lang-java="`deny`">`deny`</span> the traffic that matches the rule.
  final String ruleAction;

  /// Rule number for the entry. All the network ACL entries are processed in ascending order by rule number.
  final int ruleNumber;

  KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration({
    required this.cidrBlock,
    this.icmpTypeCode,
    this.portRange,
    required this.protocol,
    required this.ruleAction,
    required this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlock'] = cidrBlock;
    final icmpTypeCodeValue = icmpTypeCode;
    if (icmpTypeCodeValue != null) {
      map['icmpTypeCode'] = icmpTypeCodeValue.toMap();
    }
    final portRangeValue = portRange;
    if (portRangeValue != null) {
      map['portRange'] = portRangeValue.toMap();
    }
    map['protocol'] = protocol;
    map['ruleAction'] = ruleAction;
    map['ruleNumber'] = ruleNumber;
    return map;
  }

  factory KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration.fromMap(
      Map<String, dynamic> map) {
    return KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration(
      cidrBlock: map['cidrBlock'] as String,
      icmpTypeCode: map['icmpTypeCode'] == null
          ? null
          : KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode
              .fromMap((map['icmpTypeCode'] as Map).cast<String, dynamic>()),
      portRange: map['portRange'] == null
          ? null
          : KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange
              .fromMap((map['portRange'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] as String,
      ruleAction: map['ruleAction'] as String,
      ruleNumber: map['ruleNumber'] as int,
    );
  }
}
