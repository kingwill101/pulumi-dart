// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_field_to_match/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_field_to_match.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_text_transformation/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_text_transformation.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatement {
  /// Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatch?
      fieldToMatch;

  /// Sensitivity that you want AWS WAF to use to inspect for SQL injection attacks. Valid values include: `LOW`, `HIGH`.
  final String? sensitivityLevel;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  final List<
          WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementTextTransformation>
      textTransformations;

  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatement({
    this.fieldToMatch,
    this.sensitivityLevel,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldToMatchValue = fieldToMatch;
    if (fieldToMatchValue != null) {
      map['fieldToMatch'] = fieldToMatchValue.toMap();
    }
    final sensitivityLevelValue = sensitivityLevel;
    if (sensitivityLevelValue != null) {
      map['sensitivityLevel'] = sensitivityLevelValue;
    }
    map['textTransformations'] = pulumi.Input.encodeList<
        WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatch
              .fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      sensitivityLevel: map['sensitivityLevel'] == null
          ? null
          : map['sensitivityLevel'] as String,
      textTransformations: pulumi.Input.decodeList<
              WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementTextTransformation>(
          map['textTransformations'],
          (value) =>
              WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementTextTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
