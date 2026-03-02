// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_reference_sets.dart';
import 'rule_group_rule_group_rule_variables.dart';
import 'rule_group_rule_group_rules_source.dart';
import 'rule_group_rule_group_stateful_rule_options.dart';

class RuleGroupRuleGroup {
  /// A configuration block that defines the IP Set References for the rule group. See Reference Sets below for details. Please notes that there can only be a maximum of 5 `reference_sets` in a `rule_group`. See the [AWS documentation](https://docs.aws.amazon.com/network-firewall/latest/developerguide/rule-groups-ip-set-references.html#rule-groups-ip-set-reference-limits) for details.
  final pulumi.Input<RuleGroupRuleGroupReferenceSets>? referenceSets;
  /// A configuration block that defines additional settings available to use in the rules defined in the rule group. Can only be specified for **stateful** rule groups. See Rule Variables below for details.
  final pulumi.Input<RuleGroupRuleGroupRuleVariables>? ruleVariables;
  /// A configuration block that defines the stateful or stateless rules for the rule group. See Rules Source below for details.
  final pulumi.Input<RuleGroupRuleGroupRulesSource> rulesSource;
  /// A configuration block that defines stateful rule options for the rule group. See Stateful Rule Options below for details.
  final pulumi.Input<RuleGroupRuleGroupStatefulRuleOptions>? statefulRuleOptions;

  /// Creates a new [RuleGroupRuleGroup].
  /// [referenceSets] A configuration block that defines the IP Set References for the rule group. See Reference Sets below for details. Please notes that there can only be a maximum of 5 `reference_sets` in a `rule_group`. See the [AWS documentation](https://docs.aws.amazon.com/network-firewall/latest/developerguide/rule-groups-ip-set-references.html#rule-groups-ip-set-reference-limits) for details.
  /// [ruleVariables] A configuration block that defines additional settings available to use in the rules defined in the rule group. Can only be specified for **stateful** rule groups. See Rule Variables below for details.
  /// [rulesSource] A configuration block that defines the stateful or stateless rules for the rule group. See Rules Source below for details.
  /// [statefulRuleOptions] A configuration block that defines stateful rule options for the rule group. See Stateful Rule Options below for details.
  RuleGroupRuleGroup({
    this.referenceSets,
    this.ruleVariables,
    required this.rulesSource,
    this.statefulRuleOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceSets': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleGroupReferenceSets, Map<String, dynamic>>(referenceSets, (value) => value.toMap()),
      'ruleVariables': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleGroupRuleVariables, Map<String, dynamic>>(ruleVariables, (value) => value.toMap()),
      'rulesSource': pulumi.Input.mapInputValue<RuleGroupRuleGroupRulesSource, Map<String, dynamic>>(rulesSource, (value) => value.toMap()),
      'statefulRuleOptions': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleGroupStatefulRuleOptions, Map<String, dynamic>>(statefulRuleOptions, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleGroup.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroup(
      referenceSets: map['referenceSets'] == null ? null : ((RuleGroupRuleGroupReferenceSets.fromMap((map['referenceSets']! as Map).cast<String, dynamic>())).input()).input(),
      ruleVariables: map['ruleVariables'] == null ? null : ((RuleGroupRuleGroupRuleVariables.fromMap((map['ruleVariables']! as Map).cast<String, dynamic>())).input()).input(),
      rulesSource: (RuleGroupRuleGroupRulesSource.fromMap((map['rulesSource']! as Map).cast<String, dynamic>())).input(),
      statefulRuleOptions: map['statefulRuleOptions'] == null ? null : ((RuleGroupRuleGroupStatefulRuleOptions.fromMap((map['statefulRuleOptions']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

