// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_regex_match_statement_field_to_match_cookies_match_pattern.dart';

class RuleGroupRuleStatementRegexMatchStatementFieldToMatchCookies {
  /// The filter to use to identify the subset of cookies to inspect in a web request. You must specify exactly one setting: either `all`, `included_cookies` or `excluded_cookies`. More details: [CookieMatchPattern](https://docs.aws.amazon.com/waf/latest/APIReference/API_CookieMatchPattern.html)
  final pulumi.Input<List<RuleGroupRuleStatementRegexMatchStatementFieldToMatchCookiesMatchPattern>> matchPatterns;
  /// The parts of the cookies to inspect with the rule inspection criteria. If you specify All, AWS WAF inspects both keys and values. Valid values: `ALL`, `KEY`, `VALUE`
  final pulumi.Input<String> matchScope;
  /// What AWS WAF should do if the cookies of the request are larger than AWS WAF can inspect. AWS WAF does not support inspecting the entire contents of request cookies when they exceed 8 KB (8192 bytes) or 200 total cookies. The underlying host service forwards a maximum of 200 cookies and at most 8 KB of cookie contents to AWS WAF. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`
  final pulumi.Input<String> oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementRegexMatchStatementFieldToMatchCookies].
  /// [matchPatterns] The filter to use to identify the subset of cookies to inspect in a web request. You must specify exactly one setting: either `all`, `included_cookies` or `excluded_cookies`. More details: [CookieMatchPattern](https://docs.aws.amazon.com/waf/latest/APIReference/API_CookieMatchPattern.html)
  /// [matchScope] The parts of the cookies to inspect with the rule inspection criteria. If you specify All, AWS WAF inspects both keys and values. Valid values: `ALL`, `KEY`, `VALUE`
  /// [oversizeHandling] What AWS WAF should do if the cookies of the request are larger than AWS WAF can inspect. AWS WAF does not support inspecting the entire contents of request cookies when they exceed 8 KB (8192 bytes) or 200 total cookies. The underlying host service forwards a maximum of 200 cookies and at most 8 KB of cookie contents to AWS WAF. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`
  RuleGroupRuleStatementRegexMatchStatementFieldToMatchCookies({
    required this.matchPatterns,
    required this.matchScope,
    required this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchPatterns': pulumi.Input.mapInputValue<List<RuleGroupRuleStatementRegexMatchStatementFieldToMatchCookiesMatchPattern>, List<Map<String, dynamic>>>(matchPatterns, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRegexMatchStatementFieldToMatchCookiesMatchPattern, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchScope': matchScope,
      'oversizeHandling': oversizeHandling,
    };
  }

  factory RuleGroupRuleStatementRegexMatchStatementFieldToMatchCookies.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRegexMatchStatementFieldToMatchCookies(
      matchPatterns: (pulumi.Input.decodeList<RuleGroupRuleStatementRegexMatchStatementFieldToMatchCookiesMatchPattern>(map['matchPatterns']!, (value) => RuleGroupRuleStatementRegexMatchStatementFieldToMatchCookiesMatchPattern.fromMap((value as Map).cast<String, dynamic>()))).input(),
      matchScope: (map['matchScope'] as String).input(),
      oversizeHandling: (map['oversizeHandling'] as String).input(),
    );
  }
}

