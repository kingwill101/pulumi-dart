// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_sqli_match_statement_field_to_match.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_sqli_match_statement_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatch? fieldToMatch;
  /// Sensitivity that you want AWS WAF to use to inspect for SQL injection attacks. Valid values include: `LOW`, `HIGH`.
  final String? sensitivityLevel;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation> textTransformations;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement].
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  /// [sensitivityLevel] Sensitivity that you want AWS WAF to use to inspect for SQL injection attacks. Valid values include: `LOW`, `HIGH`.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement({
    this.fieldToMatch,
    this.sensitivityLevel,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?fieldToMatch == null ? null : fieldToMatch!.toMap(),
      'sensitivityLevel': ?sensitivityLevel,
      'textTransformations': pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation, Map<String, dynamic>>(textTransformations, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null ? null : RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatch.fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      sensitivityLevel: map['sensitivityLevel'] == null ? null : map['sensitivityLevel'] as String,
      textTransformations: pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation>(map['textTransformations'], (value) => RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

