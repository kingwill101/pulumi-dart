// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_rule_variables_ip_set_ip_set.dart';

class RuleGroupRuleGroupRuleVariablesIpSet {
  /// A configuration block that defines a set of IP addresses. See IP Set below for details.
  final pulumi.Input<RuleGroupRuleGroupRuleVariablesIpSetIpSet> ipSet;
  /// A unique alphanumeric string to identify the `ip_set`.
  final pulumi.Input<String> key;

  /// Creates a new [RuleGroupRuleGroupRuleVariablesIpSet].
  /// [ipSet] A configuration block that defines a set of IP addresses. See IP Set below for details.
  /// [key] A unique alphanumeric string to identify the `ip_set`.
  RuleGroupRuleGroupRuleVariablesIpSet({
    required this.ipSet,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSet': pulumi.Input.mapInputValue<RuleGroupRuleGroupRuleVariablesIpSetIpSet, Map<String, dynamic>>(ipSet, (value) => value.toMap()),
      'key': key,
    };
  }

  factory RuleGroupRuleGroupRuleVariablesIpSet.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRuleVariablesIpSet(
      ipSet: pulumi.Input.fromValue(RuleGroupRuleGroupRuleVariablesIpSetIpSet.fromMap((map['ipSet']! as Map).cast<String, dynamic>())),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}

