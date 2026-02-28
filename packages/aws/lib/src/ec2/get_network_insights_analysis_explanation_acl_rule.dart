// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_explanation_acl_rule_port_range.dart';

class GetNetworkInsightsAnalysisExplanationAclRule {
  final String cidr;
  final bool egress;
  final List<GetNetworkInsightsAnalysisExplanationAclRulePortRange> portRanges;
  final String protocol;
  final String ruleAction;
  final int ruleNumber;

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
      'portRanges': pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationAclRulePortRange, Map<String, dynamic>>(portRanges, (value) => value.toMap()),
      'protocol': protocol,
      'ruleAction': ruleAction,
      'ruleNumber': ruleNumber,
    };
  }

  factory GetNetworkInsightsAnalysisExplanationAclRule.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationAclRule(
      cidr: map['cidr'] as String,
      egress: map['egress'] as bool,
      portRanges: pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationAclRulePortRange>(map['portRanges'], (value) => GetNetworkInsightsAnalysisExplanationAclRulePortRange.fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] as String,
      ruleAction: map['ruleAction'] as String,
      ruleNumber: map['ruleNumber'] as int,
    );
  }
}

