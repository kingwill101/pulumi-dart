// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_field_to_match/rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_field_to_match.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_text_transformation/rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatch?
      fieldToMatch;

  /// The string representing the regular expression. **Note:** The fixed quota for the maximum number of characters in each regex pattern is 200, which can't be changed. See [AWS WAF quotas](https://docs.aws.amazon.com/waf/latest/developerguide/limits.html) for details.
  final String regexString;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final List<
          RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation>
      textTransformations;

  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement({
    this.fieldToMatch,
    required this.regexString,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldToMatchValue = fieldToMatch;
    if (fieldToMatchValue != null) {
      map['fieldToMatch'] = fieldToMatchValue.toMap();
    }
    map['regexString'] = regexString;
    map['textTransformations'] = pulumi.Input.encodeList<
        RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatch
              .fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      regexString: map['regexString'] as String,
      textTransformations: pulumi.Input.decodeList<
              RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation>(
          map['textTransformations'],
          (value) =>
              RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
