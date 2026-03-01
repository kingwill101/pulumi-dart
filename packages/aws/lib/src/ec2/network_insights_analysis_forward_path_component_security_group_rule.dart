// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_forward_path_component_security_group_rule_port_range.dart';

class NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule {
  final String? cidr;
  final String? direction;
  final List<NetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange>? portRanges;
  final String? prefixListId;
  final String? protocol;
  final String? securityGroupId;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule].
  /// [cidr] Optional.
  /// [direction] Optional.
  /// [portRanges] Optional.
  /// [prefixListId] Optional.
  /// [protocol] Optional.
  /// [securityGroupId] Optional.
  NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule({
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
      'portRanges': ?portRanges == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange, Map<String, dynamic>>(portRanges!, (value) => value.toMap()),
      'prefixListId': ?prefixListId,
      'protocol': ?protocol,
      'securityGroupId': ?securityGroupId,
    };
  }

  factory NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule(
      cidr: map['cidr'] == null ? null : map['cidr'] as String,
      direction: map['direction'] == null ? null : map['direction'] as String,
      portRanges: map['portRanges'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange>(map['portRanges'], (value) => NetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange.fromMap((value as Map).cast<String, dynamic>())),
      prefixListId: map['prefixListId'] == null ? null : map['prefixListId'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId'] as String,
    );
  }
}

