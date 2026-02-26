// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_insights_analysis_return_path_component_security_group_rule_port_range/get_network_insights_analysis_return_path_component_security_group_rule_port_range.dart';

class GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule {
  final String cidr;
  final String direction;
  final List<
          GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange>
      portRanges;
  final String prefixListId;
  final String protocol;
  final String securityGroupId;

  GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule({
    required this.cidr,
    required this.direction,
    required this.portRanges,
    required this.prefixListId,
    required this.protocol,
    required this.securityGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    map['direction'] = direction;
    map['portRanges'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange,
        Map<String, dynamic>>(portRanges, (value) => value.toMap());
    map['prefixListId'] = prefixListId;
    map['protocol'] = protocol;
    map['securityGroupId'] = securityGroupId;
    return map;
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule(
      cidr: map['cidr'] as String,
      direction: map['direction'] as String,
      portRanges: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange>(
          map['portRanges'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange
                  .fromMap((value as Map).cast<String, dynamic>())),
      prefixListId: map['prefixListId'] as String,
      protocol: map['protocol'] as String,
      securityGroupId: map['securityGroupId'] as String,
    );
  }
}
