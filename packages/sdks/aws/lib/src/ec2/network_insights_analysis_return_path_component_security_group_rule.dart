// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_return_path_component_security_group_rule_port_range.dart';

class NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule {
  final pulumi.Input<String?>? cidr;
  final pulumi.Input<String?>? direction;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange>?>? portRanges;
  final pulumi.Input<String?>? prefixListId;
  final pulumi.Input<String?>? protocol;
  final pulumi.Input<String?>? securityGroupId;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule].
  /// [cidr] Optional.
  /// [direction] Optional.
  /// [portRanges] Optional.
  /// [prefixListId] Optional.
  /// [protocol] Optional.
  /// [securityGroupId] Optional.
  const NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule({
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
      'portRanges': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefixListId': ?prefixListId,
      'protocol': ?protocol,
      'securityGroupId': ?securityGroupId,
    };
  }

  factory NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule(
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portRanges: (() { final guardedValue = map['portRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      prefixListId: (() { final guardedValue = map['prefixListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
