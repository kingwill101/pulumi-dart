// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_forward_path_component_security_group_rule_port_range.dart';

class GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule {
  final String cidr;
  final String direction;
  final List<GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange> portRanges;
  final String prefixListId;
  final String protocol;
  final String securityGroupId;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule].
  /// [cidr] Required.
  /// [direction] Required.
  /// [portRanges] Required.
  /// [prefixListId] Required.
  /// [protocol] Required.
  /// [securityGroupId] Required.
  GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule({
    required this.cidr,
    required this.direction,
    required this.portRanges,
    required this.prefixListId,
    required this.protocol,
    required this.securityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'direction': direction,
      'portRanges': pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange, Map<String, dynamic>>(portRanges, (value) => value.toMap()),
      'prefixListId': prefixListId,
      'protocol': protocol,
      'securityGroupId': securityGroupId,
    };
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule(
      cidr: map['cidr'] as String,
      direction: map['direction'] as String,
      portRanges: pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange>(map['portRanges'], (value) => GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange.fromMap((value as Map).cast<String, dynamic>())),
      prefixListId: map['prefixListId'] as String,
      protocol: map['protocol'] as String,
      securityGroupId: map['securityGroupId'] as String,
    );
  }
}

