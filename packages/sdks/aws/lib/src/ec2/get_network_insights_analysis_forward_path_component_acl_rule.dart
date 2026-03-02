// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_forward_path_component_acl_rule_port_range.dart';

class GetNetworkInsightsAnalysisForwardPathComponentAclRule {
  final pulumi.Input<String> cidr;
  final pulumi.Input<bool> egress;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange>> portRanges;
  final pulumi.Input<String> protocol;
  final pulumi.Input<String> ruleAction;
  final pulumi.Input<int> ruleNumber;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentAclRule].
  /// [cidr] Required.
  /// [egress] Required.
  /// [portRanges] Required.
  /// [protocol] Required.
  /// [ruleAction] Required.
  /// [ruleNumber] Required.
  GetNetworkInsightsAnalysisForwardPathComponentAclRule({
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
      'portRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': protocol,
      'ruleAction': ruleAction,
      'ruleNumber': ruleNumber,
    };
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentAclRule.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentAclRule(
      cidr: (map['cidr'] as String).input(),
      egress: (map['egress'] as bool).input(),
      portRanges: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange>(map['portRanges']!, (value) => GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protocol: (map['protocol'] as String).input(),
      ruleAction: (map['ruleAction'] as String).input(),
      ruleNumber: (map['ruleNumber'] as int).input(),
    );
  }
}

