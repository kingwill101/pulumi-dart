// ignore_for_file: unused_element, unnecessary_cast

import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_field_to_match_json_body_match_pattern.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBody {
  /// What to do when JSON parsing fails. Defaults to evaluating up to the first parsing failure. Valid values are `EVALUATE_AS_STRING`, `MATCH` and `NO_MATCH`.
  final String? invalidFallbackBehavior;
  /// The patterns to look for in the JSON body. You must specify exactly one setting: either `all` or `included_paths`. See [JsonMatchPattern](https://docs.aws.amazon.com/waf/latest/APIReference/API_JsonMatchPattern.html) for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBodyMatchPattern matchPattern;
  /// The parts of the JSON to match against using the `match_pattern`. Valid values are `ALL`, `KEY` and `VALUE`.
  final String matchScope;
  /// What to do if the body is larger than can be inspected. Valid values are `CONTINUE` (default), `MATCH` and `NO_MATCH`.
  final String? oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBody].
  /// [invalidFallbackBehavior] What to do when JSON parsing fails. Defaults to evaluating up to the first parsing failure. Valid values are `EVALUATE_AS_STRING`, `MATCH` and `NO_MATCH`.
  /// [matchPattern] The patterns to look for in the JSON body. You must specify exactly one setting: either `all` or `included_paths`. See [JsonMatchPattern](https://docs.aws.amazon.com/waf/latest/APIReference/API_JsonMatchPattern.html) for details.
  /// [matchScope] The parts of the JSON to match against using the `match_pattern`. Valid values are `ALL`, `KEY` and `VALUE`.
  /// [oversizeHandling] What to do if the body is larger than can be inspected. Valid values are `CONTINUE` (default), `MATCH` and `NO_MATCH`.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBody({
    this.invalidFallbackBehavior,
    required this.matchPattern,
    required this.matchScope,
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invalidFallbackBehavior': ?invalidFallbackBehavior,
      'matchPattern': matchPattern.toMap(),
      'matchScope': matchScope,
      'oversizeHandling': ?oversizeHandling,
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBody.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBody(
      invalidFallbackBehavior: map['invalidFallbackBehavior'] == null ? null : map['invalidFallbackBehavior'] as String,
      matchPattern: RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBodyMatchPattern.fromMap((map['matchPattern'] as Map).cast<String, dynamic>()),
      matchScope: map['matchScope'] as String,
      oversizeHandling: map['oversizeHandling'] == null ? null : map['oversizeHandling'] as String,
    );
  }
}

