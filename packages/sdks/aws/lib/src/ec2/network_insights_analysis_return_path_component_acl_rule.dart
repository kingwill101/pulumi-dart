// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_return_path_component_acl_rule_port_range.dart';

class NetworkInsightsAnalysisReturnPathComponentAclRule {
  final pulumi.Input<String>? cidr;
  final pulumi.Input<bool>? egress;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentAclRulePortRange>>? portRanges;
  final pulumi.Input<String>? protocol;
  final pulumi.Input<String>? ruleAction;
  final pulumi.Input<int>? ruleNumber;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentAclRule].
  /// [cidr] Optional.
  /// [egress] Optional.
  /// [portRanges] Optional.
  /// [protocol] Optional.
  /// [ruleAction] Optional.
  /// [ruleNumber] Optional.
  const NetworkInsightsAnalysisReturnPathComponentAclRule({
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
      'portRanges': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentAclRulePortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentAclRulePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': ?protocol,
      'ruleAction': ?ruleAction,
      'ruleNumber': ?ruleNumber,
    };
  }

  factory NetworkInsightsAnalysisReturnPathComponentAclRule.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponentAclRule(
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egress: (() { final guardedValue = map['egress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      portRanges: (() { final guardedValue = map['portRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentAclRulePortRange>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentAclRulePortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleAction: (() { final guardedValue = map['ruleAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleNumber: (() { final guardedValue = map['ruleNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
