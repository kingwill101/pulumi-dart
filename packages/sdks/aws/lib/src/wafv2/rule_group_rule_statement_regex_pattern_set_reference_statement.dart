// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_regex_pattern_set_reference_statement_field_to_match.dart';
import 'rule_group_rule_statement_regex_pattern_set_reference_statement_pre_parse_text_transformation.dart';
import 'rule_group_rule_statement_regex_pattern_set_reference_statement_text_transformation.dart';

class RuleGroupRuleStatementRegexPatternSetReferenceStatement {
  /// ARN of the Regex Pattern Set that this statement references.
  final pulumi.Input<String> arn;
  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final pulumi.Input<RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatch?>? fieldToMatch;
  /// Text transformations to apply to the raw query string before AWS WAF parses the string into individual query arguments, and before any `textTransformation` is applied. Supported only when `fieldToMatch` specifies `singleQueryArgument` or `allQueryArguments`. Maximum of 10. See Pre-Parse Text Transformation below for details.
  final pulumi.Input<List<RuleGroupRuleStatementRegexPatternSetReferenceStatementPreParseTextTransformation>?>? preParseTextTransformations;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final pulumi.Input<List<RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformation>> textTransformations;

  /// Creates a new [RuleGroupRuleStatementRegexPatternSetReferenceStatement].
  /// [arn] ARN of the Regex Pattern Set that this statement references.
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  /// [preParseTextTransformations] Text transformations to apply to the raw query string before AWS WAF parses the string into individual query arguments, and before any `textTransformation` is applied. Supported only when `fieldToMatch` specifies `singleQueryArgument` or `allQueryArguments`. Maximum of 10. See Pre-Parse Text Transformation below for details.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  const RuleGroupRuleStatementRegexPatternSetReferenceStatement({
    required this.arn,
    this.fieldToMatch,
    this.preParseTextTransformations,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'preParseTextTransformations': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleStatementRegexPatternSetReferenceStatementPreParseTextTransformation>, List<Map<String, dynamic>>>(preParseTextTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRegexPatternSetReferenceStatementPreParseTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'textTransformations': pulumi.Input.mapInputValue<List<RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleStatementRegexPatternSetReferenceStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRegexPatternSetReferenceStatement(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preParseTextTransformations: (() { final guardedValue = map['preParseTextTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementRegexPatternSetReferenceStatementPreParseTextTransformation>(guardedValue, (value) => RuleGroupRuleStatementRegexPatternSetReferenceStatementPreParseTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      textTransformations: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformation>(map['textTransformations']!, (value) => RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
