// ignore_for_file: unused_element, unnecessary_cast

import '../rule_group_rule_group_reference_sets/rule_group_rule_group_reference_sets.dart';
import '../rule_group_rule_group_rule_variables/rule_group_rule_group_rule_variables.dart';
import '../rule_group_rule_group_rules_source/rule_group_rule_group_rules_source.dart';
import '../rule_group_rule_group_stateful_rule_options/rule_group_rule_group_stateful_rule_options.dart';

class RuleGroupRuleGroup {
  /// A configuration block that defines the IP Set References for the rule group. See Reference Sets below for details. Please notes that there can only be a maximum of 5 <span pulumi-lang-nodejs="`referenceSets`" pulumi-lang-dotnet="`ReferenceSets`" pulumi-lang-go="`referenceSets`" pulumi-lang-python="`reference_sets`" pulumi-lang-yaml="`referenceSets`" pulumi-lang-java="`referenceSets`">`reference_sets`</span> in a <span pulumi-lang-nodejs="`ruleGroup`" pulumi-lang-dotnet="`RuleGroup`" pulumi-lang-go="`ruleGroup`" pulumi-lang-python="`rule_group`" pulumi-lang-yaml="`ruleGroup`" pulumi-lang-java="`ruleGroup`">`rule_group`</span>. See the [AWS documentation](https://docs.aws.amazon.com/network-firewall/latest/developerguide/rule-groups-ip-set-references.html#rule-groups-ip-set-reference-limits) for details.
  final RuleGroupRuleGroupReferenceSets? referenceSets;

  /// A configuration block that defines additional settings available to use in the rules defined in the rule group. Can only be specified for **stateful** rule groups. See Rule Variables below for details.
  final RuleGroupRuleGroupRuleVariables? ruleVariables;

  /// A configuration block that defines the stateful or stateless rules for the rule group. See Rules Source below for details.
  final RuleGroupRuleGroupRulesSource rulesSource;

  /// A configuration block that defines stateful rule options for the rule group. See Stateful Rule Options below for details.
  final RuleGroupRuleGroupStatefulRuleOptions? statefulRuleOptions;

  RuleGroupRuleGroup({
    this.referenceSets,
    this.ruleVariables,
    required this.rulesSource,
    this.statefulRuleOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final referenceSetsValue = referenceSets;
    if (referenceSetsValue != null) {
      map['referenceSets'] = referenceSetsValue.toMap();
    }
    final ruleVariablesValue = ruleVariables;
    if (ruleVariablesValue != null) {
      map['ruleVariables'] = ruleVariablesValue.toMap();
    }
    map['rulesSource'] = rulesSource.toMap();
    final statefulRuleOptionsValue = statefulRuleOptions;
    if (statefulRuleOptionsValue != null) {
      map['statefulRuleOptions'] = statefulRuleOptionsValue.toMap();
    }
    return map;
  }

  factory RuleGroupRuleGroup.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroup(
      referenceSets: map['referenceSets'] == null
          ? null
          : RuleGroupRuleGroupReferenceSets.fromMap(
              (map['referenceSets'] as Map).cast<String, dynamic>()),
      ruleVariables: map['ruleVariables'] == null
          ? null
          : RuleGroupRuleGroupRuleVariables.fromMap(
              (map['ruleVariables'] as Map).cast<String, dynamic>()),
      rulesSource: RuleGroupRuleGroupRulesSource.fromMap(
          (map['rulesSource'] as Map).cast<String, dynamic>()),
      statefulRuleOptions: map['statefulRuleOptions'] == null
          ? null
          : RuleGroupRuleGroupStatefulRuleOptions.fromMap(
              (map['statefulRuleOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
