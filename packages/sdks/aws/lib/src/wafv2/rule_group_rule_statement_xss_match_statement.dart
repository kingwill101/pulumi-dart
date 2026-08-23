// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_xss_match_statement_field_to_match.dart';
import 'rule_group_rule_statement_xss_match_statement_pre_parse_text_transformation.dart';
import 'rule_group_rule_statement_xss_match_statement_text_transformation.dart';

class RuleGroupRuleStatementXssMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final pulumi.Input<RuleGroupRuleStatementXssMatchStatementFieldToMatch>? fieldToMatch;
  /// Text transformations to apply to the raw query string before AWS WAF parses the string into individual query arguments, and before any `textTransformation` is applied. Supported only when `fieldToMatch` specifies `singleQueryArgument` or `allQueryArguments`. Maximum of 10. See Pre-Parse Text Transformation below for details.
  final pulumi.Input<List<RuleGroupRuleStatementXssMatchStatementPreParseTextTransformation>>? preParseTextTransformations;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final pulumi.Input<List<RuleGroupRuleStatementXssMatchStatementTextTransformation>> textTransformations;

  /// Creates a new [RuleGroupRuleStatementXssMatchStatement].
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  /// [preParseTextTransformations] Text transformations to apply to the raw query string before AWS WAF parses the string into individual query arguments, and before any `textTransformation` is applied. Supported only when `fieldToMatch` specifies `singleQueryArgument` or `allQueryArguments`. Maximum of 10. See Pre-Parse Text Transformation below for details.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  const RuleGroupRuleStatementXssMatchStatement({
    this.fieldToMatch,
    this.preParseTextTransformations,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementXssMatchStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'preParseTextTransformations': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleStatementXssMatchStatementPreParseTextTransformation>, List<Map<String, dynamic>>>(preParseTextTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementXssMatchStatementPreParseTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'textTransformations': pulumi.Input.mapInputValue<List<RuleGroupRuleStatementXssMatchStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementXssMatchStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleStatementXssMatchStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementXssMatchStatement(
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementXssMatchStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preParseTextTransformations: (() { final guardedValue = map['preParseTextTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementXssMatchStatementPreParseTextTransformation>(guardedValue, (value) => RuleGroupRuleStatementXssMatchStatementPreParseTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      textTransformations: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementXssMatchStatementTextTransformation>(map['textTransformations']!, (value) => RuleGroupRuleStatementXssMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
