// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_match_statement_field_to_match/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_match_statement_field_to_match.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_match_statement_text_transformation/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_match_statement_text_transformation.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatementFieldToMatch?
      fieldToMatch;

  /// String representing the regular expression. Minimum of `1` and maximum of `512` characters.
  final String regexString;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  final List<
          WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatementTextTransformation>
      textTransformations;

  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatement({
    this.fieldToMatch,
    required this.regexString,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldToMatchValue = fieldToMatch;
    if (fieldToMatchValue != null) {
      map['fieldToMatch'] = fieldToMatchValue.toMap();
    }
    map['regexString'] = regexString;
    map['textTransformations'] = pulumi.Input.encodeList<
        WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatementTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatementFieldToMatch
              .fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      regexString: map['regexString'] as String,
      textTransformations: pulumi.Input.decodeList<
              WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatementTextTransformation>(
          map['textTransformations'],
          (value) =>
              WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatementTextTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
