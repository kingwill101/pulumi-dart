// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_explanation_acl_rule_port_range.dart';

class GetNetworkInsightsAnalysisExplanationAclRule {
  final pulumi.Input<String> cidr;
  final pulumi.Input<bool> egress;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationAclRulePortRange>> portRanges;
  final pulumi.Input<String> protocol;
  final pulumi.Input<String> ruleAction;
  final pulumi.Input<int> ruleNumber;

  /// Creates a new [GetNetworkInsightsAnalysisExplanationAclRule].
  /// [cidr] Required.
  /// [egress] Required.
  /// [portRanges] Required.
  /// [protocol] Required.
  /// [ruleAction] Required.
  /// [ruleNumber] Required.
  GetNetworkInsightsAnalysisExplanationAclRule({
    required this.cidr,
    required this.egress,
    required this.portRanges,
    required this.protocol,
    required this.ruleAction,
    required this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'egress': egress,
      'portRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationAclRulePortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationAclRulePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': protocol,
      'ruleAction': ruleAction,
      'ruleNumber': ruleNumber,
    };
  }

  factory GetNetworkInsightsAnalysisExplanationAclRule.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationAclRule(
      cidr: (map['cidr'] as String).input(),
      egress: (map['egress'] as bool).input(),
      portRanges: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationAclRulePortRange>(map['portRanges']!, (value) => GetNetworkInsightsAnalysisExplanationAclRulePortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protocol: (map['protocol'] as String).input(),
      ruleAction: (map['ruleAction'] as String).input(),
      ruleNumber: (map['ruleNumber'] as int).input(),
    );
  }
}

