// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_byte_match_statement_field_to_match_json_body_match_pattern/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_byte_match_statement_field_to_match_json_body_match_pattern.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBody {
  /// What to do when JSON parsing fails. Defaults to evaluating up to the first parsing failure. Valid values are `EVALUATE_AS_STRING`, `MATCH` and `NO_MATCH`.
  final String? invalidFallbackBehavior;

  /// The patterns to look for in the JSON body. You must specify exactly one setting: either <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span> or <span pulumi-lang-nodejs="`includedPaths`" pulumi-lang-dotnet="`IncludedPaths`" pulumi-lang-go="`includedPaths`" pulumi-lang-python="`included_paths`" pulumi-lang-yaml="`includedPaths`" pulumi-lang-java="`includedPaths`">`included_paths`</span>. See [JsonMatchPattern](https://docs.aws.amazon.com/waf/latest/APIReference/API_JsonMatchPattern.html) for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern
      matchPattern;

  /// The parts of the JSON to match against using the <span pulumi-lang-nodejs="`matchPattern`" pulumi-lang-dotnet="`MatchPattern`" pulumi-lang-go="`matchPattern`" pulumi-lang-python="`match_pattern`" pulumi-lang-yaml="`matchPattern`" pulumi-lang-java="`matchPattern`">`match_pattern`</span>. Valid values are `ALL`, `KEY` and `VALUE`.
  final String matchScope;

  /// What to do if the body is larger than can be inspected. Valid values are `CONTINUE` (default), `MATCH` and `NO_MATCH`.
  final String? oversizeHandling;

  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBody({
    this.invalidFallbackBehavior,
    required this.matchPattern,
    required this.matchScope,
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final invalidFallbackBehaviorValue = invalidFallbackBehavior;
    if (invalidFallbackBehaviorValue != null) {
      map['invalidFallbackBehavior'] = invalidFallbackBehaviorValue;
    }
    map['matchPattern'] = matchPattern.toMap();
    map['matchScope'] = matchScope;
    final oversizeHandlingValue = oversizeHandling;
    if (oversizeHandlingValue != null) {
      map['oversizeHandling'] = oversizeHandlingValue;
    }
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBody.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBody(
      invalidFallbackBehavior: map['invalidFallbackBehavior'] == null
          ? null
          : map['invalidFallbackBehavior'] as String,
      matchPattern:
          WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern
              .fromMap((map['matchPattern'] as Map).cast<String, dynamic>()),
      matchScope: map['matchScope'] as String,
      oversizeHandling: map['oversizeHandling'] == null
          ? null
          : map['oversizeHandling'] as String,
    );
  }
}
