// ignore_for_file: unused_element, unnecessary_cast

import 'reference_sets.dart';
import 'rule_variables.dart';
import 'rules_source.dart';
import 'stateful_rule_options.dart';

/// Definition of RuleGroup
class RuleGroup {
  /// Property referenceSets
  final ReferenceSets? referenceSets;
  /// Property ruleVariables
  final RuleVariables? ruleVariables;
  /// Property rulesSource
  final RulesSource? rulesSource;
  /// Property statefulRuleOptions
  final StatefulRuleOptions? statefulRuleOptions;

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
      'referenceSets': ?referenceSets == null ? null : referenceSets!.toMap(),
      'ruleVariables': ?ruleVariables == null ? null : ruleVariables!.toMap(),
      'rulesSource': ?rulesSource == null ? null : rulesSource!.toMap(),
      'statefulRuleOptions': ?statefulRuleOptions == null ? null : statefulRuleOptions!.toMap(),
    };
  }

  factory RuleGroup.fromMap(Map<String, dynamic> map) {
    return RuleGroup(
      referenceSets: map['referenceSets'] == null ? null : ReferenceSets.fromMap((map['referenceSets'] as Map).cast<String, dynamic>()),
      ruleVariables: map['ruleVariables'] == null ? null : RuleVariables.fromMap((map['ruleVariables'] as Map).cast<String, dynamic>()),
      rulesSource: map['rulesSource'] == null ? null : RulesSource.fromMap((map['rulesSource'] as Map).cast<String, dynamic>()),
      statefulRuleOptions: map['statefulRuleOptions'] == null ? null : StatefulRuleOptions.fromMap((map['statefulRuleOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

