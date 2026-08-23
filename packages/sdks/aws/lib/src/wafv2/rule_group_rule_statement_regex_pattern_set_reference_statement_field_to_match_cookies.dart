// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_regex_pattern_set_reference_statement_field_to_match_cookies_match_pattern.dart';

class RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookies {
  /// The filter to use to identify the subset of cookies to inspect in a web request. You must specify exactly one setting: either `all`, `includedCookies` or `excludedCookies`. More details: [CookieMatchPattern](https://docs.aws.amazon.com/waf/latest/APIReference/API_CookieMatchPattern.html)
  final pulumi.Input<List<RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern>> matchPatterns;
  /// The parts of the cookies to inspect with the rule inspection criteria. If you specify All, AWS WAF inspects both keys and values. Valid values: `ALL`, `KEY`, `VALUE`
  final pulumi.Input<String> matchScope;
  /// What AWS WAF should do if the cookies of the request are larger than AWS WAF can inspect. AWS WAF does not support inspecting the entire contents of request cookies when they exceed 8 KB (8192 bytes) or 200 total cookies. The underlying host service forwards a maximum of 200 cookies and at most 8 KB of cookie contents to AWS WAF. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`
  final pulumi.Input<String> oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookies].
  /// [matchPatterns] The filter to use to identify the subset of cookies to inspect in a web request. You must specify exactly one setting: either `all`, `includedCookies` or `excludedCookies`. More details: [CookieMatchPattern](https://docs.aws.amazon.com/waf/latest/APIReference/API_CookieMatchPattern.html)
  /// [matchScope] The parts of the cookies to inspect with the rule inspection criteria. If you specify All, AWS WAF inspects both keys and values. Valid values: `ALL`, `KEY`, `VALUE`
  /// [oversizeHandling] What AWS WAF should do if the cookies of the request are larger than AWS WAF can inspect. AWS WAF does not support inspecting the entire contents of request cookies when they exceed 8 KB (8192 bytes) or 200 total cookies. The underlying host service forwards a maximum of 200 cookies and at most 8 KB of cookie contents to AWS WAF. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`
  const RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookies({
    required this.matchPatterns,
    required this.matchScope,
    required this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchPatterns': pulumi.Input.mapInputValue<List<RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern>, List<Map<String, dynamic>>>(matchPatterns, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchScope': matchScope,
      'oversizeHandling': oversizeHandling,
    };
  }

  factory RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookies.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookies(
      matchPatterns: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern>(map['matchPatterns']!, (value) => RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern.fromMap((value as Map).cast<String, dynamic>()))),
      matchScope: pulumi.Input.fromValue(map['matchScope'] as String),
      oversizeHandling: pulumi.Input.fromValue(map['oversizeHandling'] as String),
    );
  }
}
