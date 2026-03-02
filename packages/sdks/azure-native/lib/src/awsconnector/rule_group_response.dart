// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_sets_response.dart';
import 'rule_variables_response.dart';
import 'rules_source_response.dart';
import 'stateful_rule_options_response.dart';

/// Definition of RuleGroup
class RuleGroupResponse {
  /// Property referenceSets
  final pulumi.Input<ReferenceSetsResponse>? referenceSets;
  /// Property ruleVariables
  final pulumi.Input<RuleVariablesResponse>? ruleVariables;
  /// Property rulesSource
  final pulumi.Input<RulesSourceResponse>? rulesSource;
  /// Property statefulRuleOptions
  final pulumi.Input<StatefulRuleOptionsResponse>? statefulRuleOptions;

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
      'referenceSets': ?pulumi.Input.mapOptionalInputValue<ReferenceSetsResponse, Map<String, dynamic>>(referenceSets, (value) => value.toMap()),
      'ruleVariables': ?pulumi.Input.mapOptionalInputValue<RuleVariablesResponse, Map<String, dynamic>>(ruleVariables, (value) => value.toMap()),
      'rulesSource': ?pulumi.Input.mapOptionalInputValue<RulesSourceResponse, Map<String, dynamic>>(rulesSource, (value) => value.toMap()),
      'statefulRuleOptions': ?pulumi.Input.mapOptionalInputValue<StatefulRuleOptionsResponse, Map<String, dynamic>>(statefulRuleOptions, (value) => value.toMap()),
    };
  }

  factory RuleGroupResponse.fromMap(Map<String, dynamic> map) {
    return RuleGroupResponse(
      referenceSets: map['referenceSets'] == null ? null : (ReferenceSetsResponse.fromMap((map['referenceSets'] as Map).cast<String, dynamic>())).input(),
      ruleVariables: map['ruleVariables'] == null ? null : (RuleVariablesResponse.fromMap((map['ruleVariables'] as Map).cast<String, dynamic>())).input(),
      rulesSource: map['rulesSource'] == null ? null : (RulesSourceResponse.fromMap((map['rulesSource'] as Map).cast<String, dynamic>())).input(),
      statefulRuleOptions: map['statefulRuleOptions'] == null ? null : (StatefulRuleOptionsResponse.fromMap((map['statefulRuleOptions'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

