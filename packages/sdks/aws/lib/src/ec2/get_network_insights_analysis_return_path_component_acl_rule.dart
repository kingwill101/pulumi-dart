// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_return_path_component_acl_rule_port_range.dart';

class GetNetworkInsightsAnalysisReturnPathComponentAclRule {
  final pulumi.Input<String> cidr;
  final pulumi.Input<bool> egress;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange>> portRanges;
  final pulumi.Input<String> protocol;
  final pulumi.Input<String> ruleAction;
  final pulumi.Input<int> ruleNumber;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentAclRule].
  /// [cidr] Required.
  /// [egress] Required.
  /// [portRanges] Required.
  /// [protocol] Required.
  /// [ruleAction] Required.
  /// [ruleNumber] Required.
  const GetNetworkInsightsAnalysisReturnPathComponentAclRule({
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
      'portRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': protocol,
      'ruleAction': ruleAction,
      'ruleNumber': ruleNumber,
    };
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentAclRule.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentAclRule(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      egress: pulumi.Input.fromValue(map['egress'] as bool),
      portRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange>(map['portRanges']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange.fromMap((value as Map).cast<String, dynamic>()))),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      ruleAction: pulumi.Input.fromValue(map['ruleAction'] as String),
      ruleNumber: pulumi.Input.fromValue(map['ruleNumber'] as int),
    );
  }
}

