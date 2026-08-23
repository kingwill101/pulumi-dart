// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_pre_parse_text_transformation.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatch>? fieldToMatch;
  /// The area within the portion of a web request that you want AWS WAF to search for `searchString`. Valid values include the following: `EXACTLY`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CONTAINS_WORD`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchStatement.html) for more information.
  final pulumi.Input<String> positionalConstraint;
  /// Text transformations to apply to the raw query string before AWS WAF parses the string into individual query arguments, and before any `textTransformation` is applied. Supported only when `fieldToMatch` specifies `singleQueryArgument` or `allQueryArguments`. Maximum of 10. See Pre-Parse Text Transformation below for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementPreParseTextTransformation>>? preParseTextTransformations;
  /// A string value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in `fieldToMatch`. The maximum length of the value is 50 bytes.
  final pulumi.Input<String> searchString;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation>> textTransformations;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement].
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  /// [positionalConstraint] The area within the portion of a web request that you want AWS WAF to search for `searchString`. Valid values include the following: `EXACTLY`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CONTAINS_WORD`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchStatement.html) for more information.
  /// [preParseTextTransformations] Text transformations to apply to the raw query string before AWS WAF parses the string into individual query arguments, and before any `textTransformation` is applied. Supported only when `fieldToMatch` specifies `singleQueryArgument` or `allQueryArguments`. Maximum of 10. See Pre-Parse Text Transformation below for details.
  /// [searchString] A string value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in `fieldToMatch`. The maximum length of the value is 50 bytes.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  const RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement({
    this.fieldToMatch,
    required this.positionalConstraint,
    this.preParseTextTransformations,
    required this.searchString,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'positionalConstraint': positionalConstraint,
      'preParseTextTransformations': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementPreParseTextTransformation>, List<Map<String, dynamic>>>(preParseTextTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementPreParseTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'searchString': searchString,
      'textTransformations': pulumi.Input.mapInputValue<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement(
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      positionalConstraint: pulumi.Input.fromValue(map['positionalConstraint'] as String),
      preParseTextTransformations: (() { final guardedValue = map['preParseTextTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementPreParseTextTransformation>(guardedValue, (value) => RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementPreParseTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      searchString: pulumi.Input.fromValue(map['searchString'] as String),
      textTransformations: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation>(map['textTransformations']!, (value) => RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
