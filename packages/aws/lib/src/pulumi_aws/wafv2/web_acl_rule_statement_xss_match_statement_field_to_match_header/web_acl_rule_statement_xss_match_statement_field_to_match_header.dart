// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_xss_match_statement_field_to_match_header_match_pattern/web_acl_rule_statement_xss_match_statement_field_to_match_header_match_pattern.dart';

class WebAclRuleStatementXssMatchStatementFieldToMatchHeader {
  /// The filter to use to identify the subset of headers to inspect in a web request. The <span pulumi-lang-nodejs="`matchPattern`" pulumi-lang-dotnet="`MatchPattern`" pulumi-lang-go="`matchPattern`" pulumi-lang-python="`match_pattern`" pulumi-lang-yaml="`matchPattern`" pulumi-lang-java="`matchPattern`">`match_pattern`</span> block supports only one of the following arguments:
  final WebAclRuleStatementXssMatchStatementFieldToMatchHeaderMatchPattern
      matchPattern;

  /// The parts of the headers to inspect with the rule inspection criteria. If you specify `All`, AWS WAF inspects both keys and values. Valid values include the following: `ALL`, `Key`, `Value`.
  final String matchScope;

  /// Oversize handling tells AWS WAF what to do with a web request when the request component that the rule inspects is over the limits. Valid values include the following: `CONTINUE`, `MATCH`, `NO_MATCH`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-oversize-handling.html) for more information.
  final String oversizeHandling;

  WebAclRuleStatementXssMatchStatementFieldToMatchHeader({
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

  factory WebAclRuleStatementXssMatchStatementFieldToMatchHeader.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementXssMatchStatementFieldToMatchHeader(
      matchPattern:
          WebAclRuleStatementXssMatchStatementFieldToMatchHeaderMatchPattern
              .fromMap((map['matchPattern'] as Map).cast<String, dynamic>()),
      matchScope: map['matchScope'] as String,
      oversizeHandling: map['oversizeHandling'] as String,
    );
  }
}
