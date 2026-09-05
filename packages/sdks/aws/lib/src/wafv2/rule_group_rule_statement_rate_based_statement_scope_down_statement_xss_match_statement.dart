// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_pre_parse_text_transformation.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch?>? fieldToMatch;
  /// Text transformations to apply to the raw query string before AWS WAF parses the string into individual query arguments, and before any `textTransformation` is applied. Supported only when `fieldToMatch` specifies `singleQueryArgument` or `allQueryArguments`. Maximum of 10. See Pre-Parse Text Transformation below for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementPreParseTextTransformation>?>? preParseTextTransformations;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation>> textTransformations;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement].
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  /// [preParseTextTransformations] Text transformations to apply to the raw query string before AWS WAF parses the string into individual query arguments, and before any `textTransformation` is applied. Supported only when `fieldToMatch` specifies `singleQueryArgument` or `allQueryArguments`. Maximum of 10. See Pre-Parse Text Transformation below for details.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  const RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement({
    this.fieldToMatch,
    this.preParseTextTransformations,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'preParseTextTransformations': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementPreParseTextTransformation>, List<Map<String, dynamic>>>(preParseTextTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementPreParseTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'textTransformations': pulumi.Input.mapInputValue<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement(
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preParseTextTransformations: (() { final guardedValue = map['preParseTextTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementPreParseTextTransformation>(guardedValue, (value) => RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementPreParseTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      textTransformations: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation>(map['textTransformations']!, (value) => RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
