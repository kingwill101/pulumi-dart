// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_forward_path_component_acl_rule_port_range.dart';

class NetworkInsightsAnalysisForwardPathComponentAclRule {
  final String? cidr;
  final bool? egress;
  final List<NetworkInsightsAnalysisForwardPathComponentAclRulePortRange>?
  portRanges;
  final String? protocol;
  final String? ruleAction;
  final int? ruleNumber;

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
      'portRanges': ?portRanges == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentAclRulePortRange,
              Map<String, dynamic>
            >(portRanges!, (value) => value.toMap()),
      'protocol': ?protocol,
      'ruleAction': ?ruleAction,
      'ruleNumber': ?ruleNumber,
    };
  }

  factory NetworkInsightsAnalysisForwardPathComponentAclRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisForwardPathComponentAclRule(
      cidr: map['cidr'] == null ? null : map['cidr'] as String,
      egress: map['egress'] == null ? null : map['egress'] as bool,
      portRanges: map['portRanges'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentAclRulePortRange
            >(
              map['portRanges'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentAclRulePortRange.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      ruleAction: map['ruleAction'] == null
          ? null
          : map['ruleAction'] as String,
      ruleNumber: map['ruleNumber'] == null ? null : map['ruleNumber'] as int,
    );
  }
}
