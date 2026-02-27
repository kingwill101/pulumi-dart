// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_insights_analysis_explanation_acl_rule_port_range/network_insights_analysis_explanation_acl_rule_port_range.dart';

class NetworkInsightsAnalysisExplanationAclRule {
  final String? cidr;
  final bool? egress;
  final List<NetworkInsightsAnalysisExplanationAclRulePortRange>? portRanges;
  final String? protocol;
  final String? ruleAction;
  final int? ruleNumber;

  NetworkInsightsAnalysisExplanationAclRule({
    this.cidr,
    this.egress,
    this.portRanges,
    this.protocol,
    this.ruleAction,
    this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrValue = cidr;
    if (cidrValue != null) {
      map['cidr'] = cidrValue;
    }
    final egressValue = egress;
    if (egressValue != null) {
      map['egress'] = egressValue;
    }
    final portRangesValue = portRanges;
    if (portRangesValue != null) {
      map['portRanges'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationAclRulePortRange,
          Map<String, dynamic>>(portRangesValue, (value) => value.toMap());
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final ruleActionValue = ruleAction;
    if (ruleActionValue != null) {
      map['ruleAction'] = ruleActionValue;
    }
    final ruleNumberValue = ruleNumber;
    if (ruleNumberValue != null) {
      map['ruleNumber'] = ruleNumberValue;
    }
    return map;
  }

  factory NetworkInsightsAnalysisExplanationAclRule.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanationAclRule(
      cidr: map['cidr'] == null ? null : map['cidr'] as String,
      egress: map['egress'] == null ? null : map['egress'] as bool,
      portRanges: map['portRanges'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationAclRulePortRange>(
              map['portRanges'],
              (value) =>
                  NetworkInsightsAnalysisExplanationAclRulePortRange.fromMap(
                      (value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      ruleAction:
          map['ruleAction'] == null ? null : map['ruleAction'] as String,
      ruleNumber: map['ruleNumber'] == null ? null : map['ruleNumber'] as int,
    );
  }
}
