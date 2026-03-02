// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_explanation_security_group_rule_port_range.dart';

class GetNetworkInsightsAnalysisExplanationSecurityGroupRule {
  final pulumi.Input<String> cidr;
  final pulumi.Input<String> direction;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange>> portRanges;
  final pulumi.Input<String> prefixListId;
  final pulumi.Input<String> protocol;
  final pulumi.Input<String> securityGroupId;

  /// Creates a new [GetNetworkInsightsAnalysisExplanationSecurityGroupRule].
  /// [cidr] Required.
  /// [direction] Required.
  /// [portRanges] Required.
  /// [prefixListId] Required.
  /// [protocol] Required.
  /// [securityGroupId] Required.
  GetNetworkInsightsAnalysisExplanationSecurityGroupRule({
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
      'portRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefixListId': prefixListId,
      'protocol': protocol,
      'securityGroupId': securityGroupId,
    };
  }

  factory GetNetworkInsightsAnalysisExplanationSecurityGroupRule.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationSecurityGroupRule(
      cidr: (map['cidr'] as String).input(),
      direction: (map['direction'] as String).input(),
      portRanges: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange>(map['portRanges'], (value) => GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prefixListId: (map['prefixListId'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
    );
  }
}

