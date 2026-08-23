// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_field_to_match.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_pre_parse_text_transformation.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatch>? fieldToMatch;
  /// Text transformations to apply to the raw query string before AWS WAF parses the string into individual query arguments, and before any `textTransformation` is applied. Supported only when `fieldToMatch` specifies `singleQueryArgument` or `allQueryArguments`. Maximum of 10. See Pre-Parse Text Transformation below for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementPreParseTextTransformation>>? preParseTextTransformations;
  /// The string representing the regular expression. **Note:** The fixed quota for the maximum number of characters in each regex pattern is 200, which can't be changed. See [AWS WAF quotas](https://docs.aws.amazon.com/waf/latest/developerguide/limits.html) for details.
  final pulumi.Input<String> regexString;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation>> textTransformations;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement].
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  /// [preParseTextTransformations] Text transformations to apply to the raw query string before AWS WAF parses the string into individual query arguments, and before any `textTransformation` is applied. Supported only when `fieldToMatch` specifies `singleQueryArgument` or `allQueryArguments`. Maximum of 10. See Pre-Parse Text Transformation below for details.
  /// [regexString] The string representing the regular expression. **Note:** The fixed quota for the maximum number of characters in each regex pattern is 200, which can't be changed. See [AWS WAF quotas](https://docs.aws.amazon.com/waf/latest/developerguide/limits.html) for details.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  const RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement({
    this.fieldToMatch,
    this.preParseTextTransformations,
    required this.regexString,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'preParseTextTransformations': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementPreParseTextTransformation>, List<Map<String, dynamic>>>(preParseTextTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementPreParseTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regexString': regexString,
      'textTransformations': pulumi.Input.mapInputValue<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement(
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preParseTextTransformations: (() { final guardedValue = map['preParseTextTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementPreParseTextTransformation>(guardedValue, (value) => RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementPreParseTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      regexString: pulumi.Input.fromValue(map['regexString'] as String),
      textTransformations: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation>(map['textTransformations']!, (value) => RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
