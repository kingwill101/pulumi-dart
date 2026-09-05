// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementPreParseTextTransformation {
  /// Relative processing order for the pre-parse text transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before parsing the query string.
  final pulumi.Input<int> priority;
  /// Pre-parse text transformation to apply to the raw query string. Valid values are `NONE`, `URL_DECODE`, `URL_DECODE_UNI`, `COMBINE_DUPLICATE_QUERY_ARGS_BY_COMMA`, and `REPLACE_SEMICOLONS_WITH_AMPERSANDS`. See the Pre-Parse Text Transformation [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_PreParseTextTransformation.html) for more details.
  final pulumi.Input<String> type;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementPreParseTextTransformation].
  /// [priority] Relative processing order for the pre-parse text transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before parsing the query string.
  /// [type] Pre-parse text transformation to apply to the raw query string. Valid values are `NONE`, `URL_DECODE`, `URL_DECODE_UNI`, `COMBINE_DUPLICATE_QUERY_ARGS_BY_COMMA`, and `REPLACE_SEMICOLONS_WITH_AMPERSANDS`. See the Pre-Parse Text Transformation [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_PreParseTextTransformation.html) for more details.
  const WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementPreParseTextTransformation({
    required this.priority,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': priority,
      'type': type,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementPreParseTextTransformation.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementPreParseTextTransformation(
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
