// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_network_insights_analysis_explanation_acl_rule_port_range/get_network_insights_analysis_explanation_acl_rule_port_range.dart';

class GetNetworkInsightsAnalysisExplanationAclRule {
  final String cidr;
  final bool egress;
  final List<GetNetworkInsightsAnalysisExplanationAclRulePortRange> portRanges;
  final String protocol;
  final String ruleAction;
  final int ruleNumber;

  GetNetworkInsightsAnalysisExplanationAclRule({
    required this.cidr,
    required this.egress,
    required this.portRanges,
    required this.protocol,
    required this.ruleAction,
    required this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    map['egress'] = egress;
    map['portRanges'] = pulumi.Input.encodeList<
        GetNetworkInsightsAnalysisExplanationAclRulePortRange,
        Map<String, dynamic>>(portRanges, (value) => value.toMap());
    map['protocol'] = protocol;
    map['ruleAction'] = ruleAction;
    map['ruleNumber'] = ruleNumber;
    return map;
  }

  factory GetNetworkInsightsAnalysisExplanationAclRule.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationAclRule(
      cidr: map['cidr'] as String,
      egress: map['egress'] as bool,
      portRanges: pulumi.Input.decodeList<
              GetNetworkInsightsAnalysisExplanationAclRulePortRange>(
          map['portRanges'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationAclRulePortRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] as String,
      ruleAction: map['ruleAction'] as String,
      ruleNumber: map['ruleNumber'] as int,
    );
  }
}
