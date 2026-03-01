// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_explanation_security_group_rule_port_range.dart';

class NetworkInsightsAnalysisExplanationSecurityGroupRule {
  final String? cidr;
  final String? direction;
  final List<NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange>? portRanges;
  final String? prefixListId;
  final String? protocol;
  final String? securityGroupId;

  /// Creates a new [NetworkInsightsAnalysisExplanationSecurityGroupRule].
  /// [cidr] Optional.
  /// [direction] Optional.
  /// [portRanges] Optional.
  /// [prefixListId] Optional.
  /// [protocol] Optional.
  /// [securityGroupId] Optional.
  NetworkInsightsAnalysisExplanationSecurityGroupRule({
    this.cidr,
    this.direction,
    this.portRanges,
    this.prefixListId,
    this.protocol,
    this.securityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'direction': ?direction,
      'portRanges': ?portRanges == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange, Map<String, dynamic>>(portRanges!, (value) => value.toMap()),
      'prefixListId': ?prefixListId,
      'protocol': ?protocol,
      'securityGroupId': ?securityGroupId,
    };
  }

  factory NetworkInsightsAnalysisExplanationSecurityGroupRule.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanationSecurityGroupRule(
      cidr: map['cidr'] == null ? null : map['cidr'] as String,
      direction: map['direction'] == null ? null : map['direction'] as String,
      portRanges: map['portRanges'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange>(map['portRanges'], (value) => NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange.fromMap((value as Map).cast<String, dynamic>())),
      prefixListId: map['prefixListId'] == null ? null : map['prefixListId'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId'] as String,
    );
  }
}

