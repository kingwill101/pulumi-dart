// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_forward_path_component_security_group_rule_port_range.dart';

class GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule {
  final pulumi.Input<String> cidr;
  final pulumi.Input<String> direction;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange>> portRanges;
  final pulumi.Input<String> prefixListId;
  final pulumi.Input<String> protocol;
  final pulumi.Input<String> securityGroupId;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule].
  /// [cidr] Required.
  /// [direction] Required.
  /// [portRanges] Required.
  /// [prefixListId] Required.
  /// [protocol] Required.
  /// [securityGroupId] Required.
  GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule({
    required this.cidr,
    required this.direction,
    required this.portRanges,
    required this.prefixListId,
    required this.protocol,
    required this.securityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'direction': direction,
      'portRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefixListId': prefixListId,
      'protocol': protocol,
      'securityGroupId': securityGroupId,
    };
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      portRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange>(map['portRanges']!, (value) => GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange.fromMap((value as Map).cast<String, dynamic>()))),
      prefixListId: pulumi.Input.fromValue(map['prefixListId'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
    );
  }
}

