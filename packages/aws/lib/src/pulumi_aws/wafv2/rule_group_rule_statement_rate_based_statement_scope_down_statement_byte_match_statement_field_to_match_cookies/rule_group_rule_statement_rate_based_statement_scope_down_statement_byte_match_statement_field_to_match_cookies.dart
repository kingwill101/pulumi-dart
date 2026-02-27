// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match_cookies_match_pattern/rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match_cookies_match_pattern.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchCookies {
  /// The filter to use to identify the subset of cookies to inspect in a web request. You must specify exactly one setting: either `all`, `included_cookies` or `excluded_cookies`. More details: [CookieMatchPattern](https://docs.aws.amazon.com/waf/latest/APIReference/API_CookieMatchPattern.html)
  final List<
          RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchCookiesMatchPattern>
      matchPatterns;

  /// The parts of the cookies to inspect with the rule inspection criteria. If you specify All, AWS WAF inspects both keys and values. Valid values: `ALL`, `KEY`, `VALUE`
  final String matchScope;

  /// What AWS WAF should do if the cookies of the request are larger than AWS WAF can inspect. AWS WAF does not support inspecting the entire contents of request cookies when they exceed 8 KB (8192 bytes) or 200 total cookies. The underlying host service forwards a maximum of 200 cookies and at most 8 KB of cookie contents to AWS WAF. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`
  final String oversizeHandling;

  RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchCookies({
    required this.matchPatterns,
    required this.matchScope,
    required this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['matchPatterns'] = Input.encodeList<
        RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchCookiesMatchPattern,
        Map<String, dynamic>>(matchPatterns, (value) => value.toMap());
    map['matchScope'] = matchScope;
    map['oversizeHandling'] = oversizeHandling;
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchCookies.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchCookies(
      matchPatterns: Input.decodeList<
              RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchCookiesMatchPattern>(
          map['matchPatterns'],
          (value) =>
              RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchCookiesMatchPattern
                  .fromMap((value as Map).cast<String, dynamic>())),
      matchScope: map['matchScope'] as String,
      oversizeHandling: map['oversizeHandling'] as String,
    );
  }
}
