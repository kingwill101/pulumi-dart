// ignore_for_file: unused_element, unnecessary_cast

import 'reference_sets_response.dart';
import 'rule_variables_response.dart';
import 'rules_source_response.dart';
import 'stateful_rule_options_response.dart';

/// Definition of RuleGroup
class RuleGroupResponse {
  /// Property referenceSets
  final ReferenceSetsResponse? referenceSets;
  /// Property ruleVariables
  final RuleVariablesResponse? ruleVariables;
  /// Property rulesSource
  final RulesSourceResponse? rulesSource;
  /// Property statefulRuleOptions
  final StatefulRuleOptionsResponse? statefulRuleOptions;

  /// Creates a new [RuleGroupResponse].
  /// [referenceSets] Property referenceSets
  /// [ruleVariables] Property ruleVariables
  /// [rulesSource] Property rulesSource
  /// [statefulRuleOptions] Property statefulRuleOptions
  RuleGroupResponse({
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

  factory RuleGroupResponse.fromMap(Map<String, dynamic> map) {
    return RuleGroupResponse(
      referenceSets: map['referenceSets'] == null ? null : ReferenceSetsResponse.fromMap((map['referenceSets'] as Map).cast<String, dynamic>()),
      ruleVariables: map['ruleVariables'] == null ? null : RuleVariablesResponse.fromMap((map['ruleVariables'] as Map).cast<String, dynamic>()),
      rulesSource: map['rulesSource'] == null ? null : RulesSourceResponse.fromMap((map['rulesSource'] as Map).cast<String, dynamic>()),
      statefulRuleOptions: map['statefulRuleOptions'] == null ? null : StatefulRuleOptionsResponse.fromMap((map['statefulRuleOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

