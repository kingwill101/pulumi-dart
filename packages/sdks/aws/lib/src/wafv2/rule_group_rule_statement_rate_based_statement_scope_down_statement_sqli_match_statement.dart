// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_sqli_match_statement_field_to_match.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_sqli_match_statement_pre_parse_text_transformation.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_sqli_match_statement_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatch?>? fieldToMatch;
  /// Text transformations to apply to the raw query string before AWS WAF parses the string into individual query arguments, and before any `textTransformation` is applied. Supported only when `fieldToMatch` specifies `singleQueryArgument` or `allQueryArguments`. Maximum of 10. See Pre-Parse Text Transformation below for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementPreParseTextTransformation>?>? preParseTextTransformations;
  /// Sensitivity that you want AWS WAF to use to inspect for SQL injection attacks. Valid values include: `LOW`, `HIGH`.
  final pulumi.Input<String?>? sensitivityLevel;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation>> textTransformations;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement].
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  /// [preParseTextTransformations] Text transformations to apply to the raw query string before AWS WAF parses the string into individual query arguments, and before any `textTransformation` is applied. Supported only when `fieldToMatch` specifies `singleQueryArgument` or `allQueryArguments`. Maximum of 10. See Pre-Parse Text Transformation below for details.
  /// [sensitivityLevel] Sensitivity that you want AWS WAF to use to inspect for SQL injection attacks. Valid values include: `LOW`, `HIGH`.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  const RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement({
    this.fieldToMatch,
    this.preParseTextTransformations,
    this.sensitivityLevel,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'preParseTextTransformations': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementPreParseTextTransformation>, List<Map<String, dynamic>>>(preParseTextTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementPreParseTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sensitivityLevel': ?sensitivityLevel,
      'textTransformations': pulumi.Input.mapInputValue<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement(
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preParseTextTransformations: (() { final guardedValue = map['preParseTextTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementPreParseTextTransformation>(guardedValue, (value) => RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementPreParseTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sensitivityLevel: (() { final guardedValue = map['sensitivityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textTransformations: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation>(map['textTransformations']!, (value) => RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
