// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_field_to_match_header_match_pattern.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeader {
  /// The filter to use to identify the subset of headers to inspect in a web request. The `match_pattern` block supports only one of the following arguments:
  final pulumi.Input<
    WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeaderMatchPattern
  >
  matchPattern;

  /// The parts of the headers to inspect with the rule inspection criteria. If you specify `All`, AWS WAF inspects both keys and values. Valid values include the following: `ALL`, `Key`, `Value`.
  final pulumi.Input<String> matchScope;

  /// Oversize handling tells AWS WAF what to do with a web request when the request component that the rule inspects is over the limits. Valid values include the following: `CONTINUE`, `MATCH`, `NO_MATCH`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-oversize-handling.html) for more information.
  final pulumi.Input<String> oversizeHandling;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeader].
  /// [matchPattern] The filter to use to identify the subset of headers to inspect in a web request. The `match_pattern` block supports only one of the following arguments:
  /// [matchScope] The parts of the headers to inspect with the rule inspection criteria. If you specify `All`, AWS WAF inspects both keys and values. Valid values include the following: `ALL`, `Key`, `Value`.
  /// [oversizeHandling] Oversize handling tells AWS WAF what to do with a web request when the request component that the rule inspects is over the limits. Valid values include the following: `CONTINUE`, `MATCH`, `NO_MATCH`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-oversize-handling.html) for more information.
  WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeader({
    required this.matchPattern,
    required this.matchScope,
    required this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchPattern':
          pulumi.Input.mapInputValue<
            WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeaderMatchPattern,
            Map<String, dynamic>
          >(matchPattern, (value) => value.toMap()),
      'matchScope': matchScope,
      'oversizeHandling': oversizeHandling,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeader(
      matchPattern: pulumi.Input.fromValue(
        WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchHeaderMatchPattern.fromMap(
          (map['matchPattern']! as Map).cast<String, dynamic>(),
        ),
      ),
      matchScope: pulumi.Input.fromValue(map['matchScope'] as String),
      oversizeHandling: pulumi.Input.fromValue(
        map['oversizeHandling'] as String,
      ),
    );
  }
}
