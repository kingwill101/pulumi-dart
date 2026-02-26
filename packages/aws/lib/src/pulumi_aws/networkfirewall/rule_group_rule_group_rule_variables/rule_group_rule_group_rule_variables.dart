// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_group_rule_variables_ip_set/rule_group_rule_group_rule_variables_ip_set.dart';
import '../rule_group_rule_group_rule_variables_port_set/rule_group_rule_group_rule_variables_port_set.dart';

class RuleGroupRuleGroupRuleVariables {
  /// Set of configuration blocks that define IP address information. See IP Sets below for details.
  final List<RuleGroupRuleGroupRuleVariablesIpSet>? ipSets;

  /// Set of configuration blocks that define port range information. See Port Sets below for details.
  final List<RuleGroupRuleGroupRuleVariablesPortSet>? portSets;

  RuleGroupRuleGroupRuleVariables({
    this.ipSets,
    this.portSets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipSetsValue = ipSets;
    if (ipSetsValue != null) {
      map['ipSets'] = Input.encodeList<RuleGroupRuleGroupRuleVariablesIpSet,
          Map<String, dynamic>>(ipSetsValue, (value) => value.toMap());
    }
    final portSetsValue = portSets;
    if (portSetsValue != null) {
      map['portSets'] = Input.encodeList<RuleGroupRuleGroupRuleVariablesPortSet,
          Map<String, dynamic>>(portSetsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RuleGroupRuleGroupRuleVariables.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRuleVariables(
      ipSets: map['ipSets'] == null
          ? null
          : Input.decodeList<RuleGroupRuleGroupRuleVariablesIpSet>(
              map['ipSets'],
              (value) => RuleGroupRuleGroupRuleVariablesIpSet.fromMap(
                  (value as Map).cast<String, dynamic>())),
      portSets: map['portSets'] == null
          ? null
          : Input.decodeList<RuleGroupRuleGroupRuleVariablesPortSet>(
              map['portSets'],
              (value) => RuleGroupRuleGroupRuleVariablesPortSet.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
