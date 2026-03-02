// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_sets.dart';
import 'rule_variables.dart';
import 'rules_source.dart';
import 'stateful_rule_options.dart';

/// Definition of RuleGroup
class RuleGroup {
  /// Property referenceSets
  final pulumi.Input<ReferenceSets>? referenceSets;
  /// Property ruleVariables
  final pulumi.Input<RuleVariables>? ruleVariables;
  /// Property rulesSource
  final pulumi.Input<RulesSource>? rulesSource;
  /// Property statefulRuleOptions
  final pulumi.Input<StatefulRuleOptions>? statefulRuleOptions;

  /// Creates a new [RuleGroup].
  /// [referenceSets] Property referenceSets
  /// [ruleVariables] Property ruleVariables
  /// [rulesSource] Property rulesSource
  /// [statefulRuleOptions] Property statefulRuleOptions
  RuleGroup({
    this.referenceSets,
    this.ruleVariables,
    this.rulesSource,
    this.statefulRuleOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceSets': ?pulumi.Input.mapOptionalInputValue<ReferenceSets, Map<String, dynamic>>(referenceSets, (value) => value.toMap()),
      'ruleVariables': ?pulumi.Input.mapOptionalInputValue<RuleVariables, Map<String, dynamic>>(ruleVariables, (value) => value.toMap()),
      'rulesSource': ?pulumi.Input.mapOptionalInputValue<RulesSource, Map<String, dynamic>>(rulesSource, (value) => value.toMap()),
      'statefulRuleOptions': ?pulumi.Input.mapOptionalInputValue<StatefulRuleOptions, Map<String, dynamic>>(statefulRuleOptions, (value) => value.toMap()),
    };
  }

  factory RuleGroup.fromMap(Map<String, dynamic> map) {
    return RuleGroup(
      referenceSets: map['referenceSets'] == null ? null : (ReferenceSets.fromMap((map['referenceSets'] as Map).cast<String, dynamic>())).input(),
      ruleVariables: map['ruleVariables'] == null ? null : (RuleVariables.fromMap((map['ruleVariables'] as Map).cast<String, dynamic>())).input(),
      rulesSource: map['rulesSource'] == null ? null : (RulesSource.fromMap((map['rulesSource'] as Map).cast<String, dynamic>())).input(),
      statefulRuleOptions: map['statefulRuleOptions'] == null ? null : (StatefulRuleOptions.fromMap((map['statefulRuleOptions'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

