// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_insights_analysis_explanation_security_group_rule_port_range/get_network_insights_analysis_explanation_security_group_rule_port_range.dart';

class GetNetworkInsightsAnalysisExplanationSecurityGroupRule {
  final String cidr;
  final String direction;
  final List<GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange>
      portRanges;
  final String prefixListId;
  final String protocol;
  final String securityGroupId;

  GetNetworkInsightsAnalysisExplanationSecurityGroupRule({
    required this.cidr,
    required this.direction,
    required this.portRanges,
    required this.prefixListId,
    required this.protocol,
    required this.securityGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    map['direction'] = direction;
    map['portRanges'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange,
        Map<String, dynamic>>(portRanges, (value) => value.toMap());
    map['prefixListId'] = prefixListId;
    map['protocol'] = protocol;
    map['securityGroupId'] = securityGroupId;
    return map;
  }

  factory GetNetworkInsightsAnalysisExplanationSecurityGroupRule.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationSecurityGroupRule(
      cidr: map['cidr'] as String,
      direction: map['direction'] as String,
      portRanges: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange>(
          map['portRanges'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange
                  .fromMap((value as Map).cast<String, dynamic>())),
      prefixListId: map['prefixListId'] as String,
      protocol: map['protocol'] as String,
      securityGroupId: map['securityGroupId'] as String,
    );
  }
}
