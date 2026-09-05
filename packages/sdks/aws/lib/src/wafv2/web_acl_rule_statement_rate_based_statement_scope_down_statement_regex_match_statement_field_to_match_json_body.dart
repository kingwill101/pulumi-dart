// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_field_to_match_json_body_match_pattern.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBody {
  /// How to handle requests with invalid JSON body. Valid values: `EVALUATE_AS_STRING`, `MATCH`, `NO_MATCH`.
  final pulumi.Input<String?>? invalidFallbackBehavior;
  /// JSON content to inspect. See JSON Body Match Pattern below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBodyMatchPattern?>? matchPattern;
  /// Parts of the JSON to inspect. Valid values: `ALL`, `KEY`, `VALUE`.
  final pulumi.Input<String> matchScope;
  /// How to handle requests with a body larger than the inspection limit. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`. Defaults to `CONTINUE`.
  final pulumi.Input<String?>? oversizeHandling;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBody].
  /// [invalidFallbackBehavior] How to handle requests with invalid JSON body. Valid values: `EVALUATE_AS_STRING`, `MATCH`, `NO_MATCH`.
  /// [matchPattern] JSON content to inspect. See JSON Body Match Pattern below.
  /// [matchScope] Parts of the JSON to inspect. Valid values: `ALL`, `KEY`, `VALUE`.
  /// [oversizeHandling] How to handle requests with a body larger than the inspection limit. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`. Defaults to `CONTINUE`.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBody({
    this.invalidFallbackBehavior,
    this.matchPattern,
    required this.matchScope,
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invalidFallbackBehavior': ?invalidFallbackBehavior,
      'matchPattern': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBodyMatchPattern, Map<String, dynamic>>(matchPattern, (value) => value.toMap()),
      'matchScope': matchScope,
      'oversizeHandling': ?oversizeHandling,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBody.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBody(
      invalidFallbackBehavior: (() { final guardedValue = map['invalidFallbackBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchPattern: (() { final guardedValue = map['matchPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBodyMatchPattern.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchScope: pulumi.Input.fromValue(map['matchScope'] as String),
      oversizeHandling: (() { final guardedValue = map['oversizeHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
