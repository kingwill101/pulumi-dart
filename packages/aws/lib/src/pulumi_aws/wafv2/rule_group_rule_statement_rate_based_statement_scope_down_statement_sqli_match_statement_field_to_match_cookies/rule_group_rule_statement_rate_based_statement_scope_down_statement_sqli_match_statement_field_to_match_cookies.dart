// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_sqli_match_statement_field_to_match_cookies_match_pattern/rule_group_rule_statement_rate_based_statement_scope_down_statement_sqli_match_statement_field_to_match_cookies_match_pattern.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchCookies {
  /// The filter to use to identify the subset of cookies to inspect in a web request. You must specify exactly one setting: either <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>, <span pulumi-lang-nodejs="`includedCookies`" pulumi-lang-dotnet="`IncludedCookies`" pulumi-lang-go="`includedCookies`" pulumi-lang-python="`included_cookies`" pulumi-lang-yaml="`includedCookies`" pulumi-lang-java="`includedCookies`">`included_cookies`</span> or <span pulumi-lang-nodejs="`excludedCookies`" pulumi-lang-dotnet="`ExcludedCookies`" pulumi-lang-go="`excludedCookies`" pulumi-lang-python="`excluded_cookies`" pulumi-lang-yaml="`excludedCookies`" pulumi-lang-java="`excludedCookies`">`excluded_cookies`</span>. More details: [CookieMatchPattern](https://docs.aws.amazon.com/waf/latest/APIReference/API_CookieMatchPattern.html)
  final List<
          RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchCookiesMatchPattern>
      matchPatterns;

  /// The parts of the cookies to inspect with the rule inspection criteria. If you specify All, AWS WAF inspects both keys and values. Valid values: `ALL`, `KEY`, `VALUE`
  final String matchScope;

  /// What AWS WAF should do if the cookies of the request are larger than AWS WAF can inspect. AWS WAF does not support inspecting the entire contents of request cookies when they exceed 8 KB (8192 bytes) or 200 total cookies. The underlying host service forwards a maximum of 200 cookies and at most 8 KB of cookie contents to AWS WAF. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`
  final String oversizeHandling;

  RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchCookies({
    required this.matchPatterns,
    required this.matchScope,
    required this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['matchPatterns'] = Input.encodeList<
        RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchCookiesMatchPattern,
        Map<String, dynamic>>(matchPatterns, (value) => value.toMap());
    map['matchScope'] = matchScope;
    map['oversizeHandling'] = oversizeHandling;
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchCookies.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchCookies(
      matchPatterns: Input.decodeList<
              RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchCookiesMatchPattern>(
          map['matchPatterns'],
          (value) =>
              RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchCookiesMatchPattern
                  .fromMap((value as Map).cast<String, dynamic>())),
      matchScope: map['matchScope'] as String,
      oversizeHandling: map['oversizeHandling'] as String,
    );
  }
}
