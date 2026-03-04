// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_return_path_component_security_group_rule_port_range.dart';

class GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule {
  final pulumi.Input<String> cidr;
  final pulumi.Input<String> direction;
  final pulumi.Input<
    List<
      GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange
    >
  >
  portRanges;
  final pulumi.Input<String> prefixListId;
  final pulumi.Input<String> protocol;
  final pulumi.Input<String> securityGroupId;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule].
  /// [cidr] Required.
  /// [direction] Required.
  /// [portRanges] Required.
  /// [prefixListId] Required.
  /// [protocol] Required.
  /// [securityGroupId] Required.
  GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule({
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
      'portRanges':
          pulumi.Input.mapInputValue<
            List<
              GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange
            >,
            List<Map<String, dynamic>>
          >(
            portRanges,
            (value) =>
                pulumi.Input.encodeList<
                  GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'prefixListId': prefixListId,
      'protocol': protocol,
      'securityGroupId': securityGroupId,
    };
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      portRanges: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange
        >(
          map['portRanges']!,
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      prefixListId: pulumi.Input.fromValue(map['prefixListId'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
    );
  }
}
