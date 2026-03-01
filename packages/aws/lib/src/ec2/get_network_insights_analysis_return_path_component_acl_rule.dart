// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_return_path_component_acl_rule_port_range.dart';

class GetNetworkInsightsAnalysisReturnPathComponentAclRule {
  final String cidr;
  final bool egress;
  final List<GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange>
  portRanges;
  final String protocol;
  final String ruleAction;
  final int ruleNumber;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentAclRule].
  /// [cidr] Required.
  /// [egress] Required.
  /// [portRanges] Required.
  /// [protocol] Required.
  /// [ruleAction] Required.
  /// [ruleNumber] Required.
  GetNetworkInsightsAnalysisReturnPathComponentAclRule({
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
      'portRanges':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange,
            Map<String, dynamic>
          >(portRanges, (value) => value.toMap()),
      'protocol': protocol,
      'ruleAction': ruleAction,
      'ruleNumber': ruleNumber,
    };
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentAclRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisReturnPathComponentAclRule(
      cidr: map['cidr'] as String,
      egress: map['egress'] as bool,
      portRanges:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange
          >(
            map['portRanges'],
            (value) =>
                GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      protocol: map['protocol'] as String,
      ruleAction: map['ruleAction'] as String,
      ruleNumber: map['ruleNumber'] as int,
    );
  }
}
