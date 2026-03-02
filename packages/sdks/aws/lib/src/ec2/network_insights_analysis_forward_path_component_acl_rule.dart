// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_forward_path_component_acl_rule_port_range.dart';

class NetworkInsightsAnalysisForwardPathComponentAclRule {
  final pulumi.Input<String>? cidr;
  final pulumi.Input<bool>? egress;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentAclRulePortRange>>? portRanges;
  final pulumi.Input<String>? protocol;
  final pulumi.Input<String>? ruleAction;
  final pulumi.Input<int>? ruleNumber;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentAclRule].
  /// [cidr] Optional.
  /// [egress] Optional.
  /// [portRanges] Optional.
  /// [protocol] Optional.
  /// [ruleAction] Optional.
  /// [ruleNumber] Optional.
  NetworkInsightsAnalysisForwardPathComponentAclRule({
    this.cidr,
    this.egress,
    this.portRanges,
    this.protocol,
    this.ruleAction,
    this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'egress': ?egress,
      'portRanges': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentAclRulePortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentAclRulePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': ?protocol,
      'ruleAction': ?ruleAction,
      'ruleNumber': ?ruleNumber,
    };
  }

  factory NetworkInsightsAnalysisForwardPathComponentAclRule.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisForwardPathComponentAclRule(
      cidr: map['cidr'] == null ? null : ((map['cidr'] as String).input()).input(),
      egress: map['egress'] == null ? null : ((map['egress'] as bool).input()).input(),
      portRanges: map['portRanges'] == null ? null : ((pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentAclRulePortRange>(map['portRanges']!, (value) => NetworkInsightsAnalysisForwardPathComponentAclRulePortRange.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      protocol: map['protocol'] == null ? null : ((map['protocol'] as String).input()).input(),
      ruleAction: map['ruleAction'] == null ? null : ((map['ruleAction'] as String).input()).input(),
      ruleNumber: map['ruleNumber'] == null ? null : ((map['ruleNumber'] as int).input()).input(),
    );
  }
}

