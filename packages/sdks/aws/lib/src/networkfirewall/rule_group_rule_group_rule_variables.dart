// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_rule_variables_ip_set.dart';
import 'rule_group_rule_group_rule_variables_port_set.dart';

class RuleGroupRuleGroupRuleVariables {
  /// Set of configuration blocks that define IP address information. See IP Sets below for details.
  final pulumi.Input<List<RuleGroupRuleGroupRuleVariablesIpSet>>? ipSets;
  /// Set of configuration blocks that define port range information. See Port Sets below for details.
  final pulumi.Input<List<RuleGroupRuleGroupRuleVariablesPortSet>>? portSets;

  /// Creates a new [RuleGroupRuleGroupRuleVariables].
  /// [ipSets] Set of configuration blocks that define IP address information. See IP Sets below for details.
  /// [portSets] Set of configuration blocks that define port range information. See Port Sets below for details.
  const RuleGroupRuleGroupRuleVariables({
    this.ipSets,
    this.portSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSets': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleGroupRuleVariablesIpSet>, List<Map<String, dynamic>>>(ipSets, (value) => pulumi.Input.encodeList<RuleGroupRuleGroupRuleVariablesIpSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portSets': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleGroupRuleVariablesPortSet>, List<Map<String, dynamic>>>(portSets, (value) => pulumi.Input.encodeList<RuleGroupRuleGroupRuleVariablesPortSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleGroupRuleVariables.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRuleVariables(
      ipSets: (() { final guardedValue = map['ipSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleGroupRuleVariablesIpSet>(guardedValue, (value) => RuleGroupRuleGroupRuleVariablesIpSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      portSets: (() { final guardedValue = map['portSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleGroupRuleVariablesPortSet>(guardedValue, (value) => RuleGroupRuleGroupRuleVariablesPortSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
