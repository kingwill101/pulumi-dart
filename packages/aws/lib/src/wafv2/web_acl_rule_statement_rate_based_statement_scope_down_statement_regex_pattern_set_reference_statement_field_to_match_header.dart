// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_header_match_pattern.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeader {
  /// The filter to use to identify the subset of headers to inspect in a web request. The `match_pattern` block supports only one of the following arguments:
  final WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeaderMatchPattern
      matchPattern;

  /// The parts of the headers to inspect with the rule inspection criteria. If you specify `All`, AWS WAF inspects both keys and values. Valid values include the following: `ALL`, `Key`, `Value`.
  final String matchScope;

  /// Oversize handling tells AWS WAF what to do with a web request when the request component that the rule inspects is over the limits. Valid values include the following: `CONTINUE`, `MATCH`, `NO_MATCH`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-oversize-handling.html) for more information.
  final String oversizeHandling;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeader].
  /// [matchPattern] The filter to use to identify the subset of headers to inspect in a web request. The `match_pattern` block supports only one of the following arguments:
  /// [matchScope] The parts of the headers to inspect with the rule inspection criteria. If you specify `All`, AWS WAF inspects both keys and values. Valid values include the following: `ALL`, `Key`, `Value`.
  /// [oversizeHandling] Oversize handling tells AWS WAF what to do with a web request when the request component that the rule inspects is over the limits. Valid values include the following: `CONTINUE`, `MATCH`, `NO_MATCH`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-oversize-handling.html) for more information.
  WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeader({
    required this.matchPattern,
    required this.matchScope,
    required this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['matchPattern'] = matchPattern.toMap();
    map['matchScope'] = matchScope;
    map['oversizeHandling'] = oversizeHandling;
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeader.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeader(
      matchPattern:
          WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeaderMatchPattern
              .fromMap((map['matchPattern'] as Map).cast<String, dynamic>()),
      matchScope: map['matchScope'] as String,
      oversizeHandling: map['oversizeHandling'] as String,
    );
  }
}
