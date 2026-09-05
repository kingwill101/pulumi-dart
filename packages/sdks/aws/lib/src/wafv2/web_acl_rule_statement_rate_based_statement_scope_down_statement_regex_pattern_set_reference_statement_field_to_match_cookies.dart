// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_cookies_match_pattern.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookies {
  /// Cookies to inspect. See Cookies Match Pattern below.
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern>?>? matchPatterns;
  /// Parts of the cookies to inspect. Valid values: `ALL`, `KEY`, `VALUE`.
  final pulumi.Input<String> matchScope;
  /// How to handle requests with cookies larger than the inspection limit. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`.
  final pulumi.Input<String> oversizeHandling;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookies].
  /// [matchPatterns] Cookies to inspect. See Cookies Match Pattern below.
  /// [matchScope] Parts of the cookies to inspect. Valid values: `ALL`, `KEY`, `VALUE`.
  /// [oversizeHandling] How to handle requests with cookies larger than the inspection limit. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookies({
    this.matchPatterns,
    required this.matchScope,
    required this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchPatterns': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern>, List<Map<String, dynamic>>>(matchPatterns, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchScope': matchScope,
      'oversizeHandling': oversizeHandling,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookies.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookies(
      matchPatterns: (() { final guardedValue = map['matchPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern>(guardedValue, (value) => WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchScope: pulumi.Input.fromValue(map['matchScope'] as String),
      oversizeHandling: pulumi.Input.fromValue(map['oversizeHandling'] as String),
    );
  }
}
