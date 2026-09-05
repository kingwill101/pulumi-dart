// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_size_constraint_statement_field_to_match_header_match_pattern.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchHeader {
  /// Headers to inspect. See Headers Match Pattern below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchHeaderMatchPattern?>? matchPattern;
  /// Parts of the headers to inspect. Valid values: `ALL`, `KEY`, `VALUE`.
  final pulumi.Input<String> matchScope;
  /// How to handle requests with headers larger than the inspection limit. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`.
  final pulumi.Input<String> oversizeHandling;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchHeader].
  /// [matchPattern] Headers to inspect. See Headers Match Pattern below.
  /// [matchScope] Parts of the headers to inspect. Valid values: `ALL`, `KEY`, `VALUE`.
  /// [oversizeHandling] How to handle requests with headers larger than the inspection limit. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchHeader({
    this.matchPattern,
    required this.matchScope,
    required this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchPattern': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchHeaderMatchPattern, Map<String, dynamic>>(matchPattern, (value) => value.toMap()),
      'matchScope': matchScope,
      'oversizeHandling': oversizeHandling,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchHeader.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchHeader(
      matchPattern: (() { final guardedValue = map['matchPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchHeaderMatchPattern.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchScope: pulumi.Input.fromValue(map['matchScope'] as String),
      oversizeHandling: pulumi.Input.fromValue(map['oversizeHandling'] as String),
    );
  }
}
