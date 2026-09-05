// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_field_to_match_header_match_pattern.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeader {
  /// Headers to inspect. See Headers Match Pattern below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeaderMatchPattern?>? matchPattern;
  /// Parts of the headers to inspect. Valid values: `ALL`, `KEY`, `VALUE`.
  final pulumi.Input<String> matchScope;
  /// How to handle requests with headers larger than the inspection limit. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`.
  final pulumi.Input<String> oversizeHandling;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeader].
  /// [matchPattern] Headers to inspect. See Headers Match Pattern below.
  /// [matchScope] Parts of the headers to inspect. Valid values: `ALL`, `KEY`, `VALUE`.
  /// [oversizeHandling] How to handle requests with headers larger than the inspection limit. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeader({
    this.matchPattern,
    required this.matchScope,
    required this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchPattern': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeaderMatchPattern, Map<String, dynamic>>(matchPattern, (value) => value.toMap()),
      'matchScope': matchScope,
      'oversizeHandling': oversizeHandling,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeader.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeader(
      matchPattern: (() { final guardedValue = map['matchPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeaderMatchPattern.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchScope: pulumi.Input.fromValue(map['matchScope'] as String),
      oversizeHandling: pulumi.Input.fromValue(map['oversizeHandling'] as String),
    );
  }
}
