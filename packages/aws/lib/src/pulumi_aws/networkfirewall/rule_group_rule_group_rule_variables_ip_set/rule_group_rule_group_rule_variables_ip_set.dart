// ignore_for_file: unused_element, unnecessary_cast

import '../rule_group_rule_group_rule_variables_ip_set_ip_set/rule_group_rule_group_rule_variables_ip_set_ip_set.dart';

class RuleGroupRuleGroupRuleVariablesIpSet {
  /// A configuration block that defines a set of IP addresses. See IP Set below for details.
  final RuleGroupRuleGroupRuleVariablesIpSetIpSet ipSet;

  /// A unique alphanumeric string to identify the <span pulumi-lang-nodejs="`ipSet`" pulumi-lang-dotnet="`IpSet`" pulumi-lang-go="`ipSet`" pulumi-lang-python="`ip_set`" pulumi-lang-yaml="`ipSet`" pulumi-lang-java="`ipSet`">`ip_set`</span>.
  final String key;

  RuleGroupRuleGroupRuleVariablesIpSet({
    required this.ipSet,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipSet'] = ipSet.toMap();
    map['key'] = key;
    return map;
  }

  factory RuleGroupRuleGroupRuleVariablesIpSet.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRuleVariablesIpSet(
      ipSet: RuleGroupRuleGroupRuleVariablesIpSetIpSet.fromMap(
          (map['ipSet'] as Map).cast<String, dynamic>()),
      key: map['key'] as String,
    );
  }
}
