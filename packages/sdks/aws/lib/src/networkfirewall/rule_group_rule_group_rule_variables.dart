// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_rule_variables_ip_set.dart';
import 'rule_group_rule_group_rule_variables_port_set.dart';

class RuleGroupRuleGroupRuleVariables {
  /// Set of configuration blocks that define IP address information. See IP Sets below for details.
  final List<RuleGroupRuleGroupRuleVariablesIpSet>? ipSets;
  /// Set of configuration blocks that define port range information. See Port Sets below for details.
  final List<RuleGroupRuleGroupRuleVariablesPortSet>? portSets;

  /// Creates a new [RuleGroupRuleGroupRuleVariables].
  /// [ipSets] Set of configuration blocks that define IP address information. See IP Sets below for details.
  /// [portSets] Set of configuration blocks that define port range information. See Port Sets below for details.
  RuleGroupRuleGroupRuleVariables({
    this.ipSets,
    this.portSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSets': ?ipSets == null ? null : pulumi.Input.encodeList<RuleGroupRuleGroupRuleVariablesIpSet, Map<String, dynamic>>(ipSets!, (value) => value.toMap()),
      'portSets': ?portSets == null ? null : pulumi.Input.encodeList<RuleGroupRuleGroupRuleVariablesPortSet, Map<String, dynamic>>(portSets!, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleGroupRuleVariables.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRuleVariables(
      ipSets: map['ipSets'] == null ? null : pulumi.Input.decodeList<RuleGroupRuleGroupRuleVariablesIpSet>(map['ipSets'], (value) => RuleGroupRuleGroupRuleVariablesIpSet.fromMap((value as Map).cast<String, dynamic>())),
      portSets: map['portSets'] == null ? null : pulumi.Input.decodeList<RuleGroupRuleGroupRuleVariablesPortSet>(map['portSets'], (value) => RuleGroupRuleGroupRuleVariablesPortSet.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

