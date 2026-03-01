// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatch?
  fieldToMatch;

  /// The area within the portion of a web request that you want AWS WAF to search for `search_string`. Valid values include the following: `EXACTLY`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CONTAINS_WORD`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchStatement.html) for more information.
  final String positionalConstraint;

  /// A string value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in `field_to_match`. The maximum length of the value is 50 bytes.
  final String searchString;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final List<
    RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation
  >
  textTransformations;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement].
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  /// [positionalConstraint] The area within the portion of a web request that you want AWS WAF to search for `search_string`. Valid values include the following: `EXACTLY`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CONTAINS_WORD`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchStatement.html) for more information.
  /// [searchString] A string value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in `field_to_match`. The maximum length of the value is 50 bytes.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement({
    this.fieldToMatch,
    required this.positionalConstraint,
    required this.searchString,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?fieldToMatch == null ? null : fieldToMatch!.toMap(),
      'positionalConstraint': positionalConstraint,
      'searchString': searchString,
      'textTransformations':
          pulumi.Input.encodeList<
            RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation,
            Map<String, dynamic>
          >(textTransformations, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatch.fromMap(
              (map['fieldToMatch'] as Map).cast<String, dynamic>(),
            ),
      positionalConstraint: map['positionalConstraint'] as String,
      searchString: map['searchString'] as String,
      textTransformations:
          pulumi.Input.decodeList<
            RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation
          >(
            map['textTransformations'],
            (value) =>
                RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
