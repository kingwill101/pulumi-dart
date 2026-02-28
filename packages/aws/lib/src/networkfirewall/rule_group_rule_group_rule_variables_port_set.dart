// ignore_for_file: unused_element, unnecessary_cast

import 'rule_group_rule_group_rule_variables_port_set_port_set.dart';

class RuleGroupRuleGroupRuleVariablesPortSet {
  /// An unique alphanumeric string to identify the `port_set`.
  final String key;

  /// A configuration block that defines a set of port ranges. See Port Set below for details.
  final RuleGroupRuleGroupRuleVariablesPortSetPortSet portSet;

  /// Creates a new [RuleGroupRuleGroupRuleVariablesPortSet].
  /// [key] An unique alphanumeric string to identify the `port_set`.
  /// [portSet] A configuration block that defines a set of port ranges. See Port Set below for details.
  RuleGroupRuleGroupRuleVariablesPortSet({
    required this.key,
    required this.portSet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['portSet'] = portSet.toMap();
    return map;
  }

  factory RuleGroupRuleGroupRuleVariablesPortSet.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRuleVariablesPortSet(
      key: map['key'] as String,
      portSet: RuleGroupRuleGroupRuleVariablesPortSetPortSet.fromMap(
          (map['portSet'] as Map).cast<String, dynamic>()),
    );
  }
}
