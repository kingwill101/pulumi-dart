// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_rule_variables_port_set_port_set.dart';

class RuleGroupRuleGroupRuleVariablesPortSet {
  /// An unique alphanumeric string to identify the `port_set`.
  final pulumi.Input<String> key;
  /// A configuration block that defines a set of port ranges. See Port Set below for details.
  final pulumi.Input<RuleGroupRuleGroupRuleVariablesPortSetPortSet> portSet;

  /// Creates a new [RuleGroupRuleGroupRuleVariablesPortSet].
  /// [key] An unique alphanumeric string to identify the `port_set`.
  /// [portSet] A configuration block that defines a set of port ranges. See Port Set below for details.
  RuleGroupRuleGroupRuleVariablesPortSet({
    required this.key,
    required this.portSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'portSet': pulumi.Input.mapInputValue<RuleGroupRuleGroupRuleVariablesPortSetPortSet, Map<String, dynamic>>(portSet, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleGroupRuleVariablesPortSet.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRuleVariablesPortSet(
      key: pulumi.Input.fromValue(map['key'] as String),
      portSet: pulumi.Input.fromValue(RuleGroupRuleGroupRuleVariablesPortSetPortSet.fromMap((map['portSet']! as Map).cast<String, dynamic>())),
    );
  }
}

