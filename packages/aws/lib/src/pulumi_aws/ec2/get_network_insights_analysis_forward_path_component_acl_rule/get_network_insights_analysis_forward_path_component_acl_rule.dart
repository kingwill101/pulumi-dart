// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_insights_analysis_forward_path_component_acl_rule_port_range/get_network_insights_analysis_forward_path_component_acl_rule_port_range.dart';

class GetNetworkInsightsAnalysisForwardPathComponentAclRule {
  final String cidr;
  final bool egress;
  final List<GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange>
      portRanges;
  final String protocol;
  final String ruleAction;
  final int ruleNumber;

  GetNetworkInsightsAnalysisForwardPathComponentAclRule({
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
    map['portRanges'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange,
        Map<String, dynamic>>(portRanges, (value) => value.toMap());
    map['protocol'] = protocol;
    map['ruleAction'] = ruleAction;
    map['ruleNumber'] = ruleNumber;
    return map;
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentAclRule.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentAclRule(
      cidr: map['cidr'] as String,
      egress: map['egress'] as bool,
      portRanges: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange>(
          map['portRanges'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange
                  .fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] as String,
      ruleAction: map['ruleAction'] as String,
      ruleNumber: map['ruleNumber'] as int,
    );
  }
}
