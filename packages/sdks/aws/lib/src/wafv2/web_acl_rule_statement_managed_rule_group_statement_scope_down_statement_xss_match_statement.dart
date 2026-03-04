// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_xss_match_statement_field_to_match.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_xss_match_statement_text_transformation.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement {
  /// Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  final pulumi.Input<
    WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementFieldToMatch
  >?
  fieldToMatch;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  final pulumi.Input<
    List<
      WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementTextTransformation
    >
  >
  textTransformations;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement].
  /// [fieldToMatch] Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement({
    this.fieldToMatch,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementFieldToMatch,
            Map<String, dynamic>
          >(fieldToMatch, (value) => value.toMap()),
      'textTransformations':
          pulumi.Input.mapInputValue<
            List<
              WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementTextTransformation
            >,
            List<Map<String, dynamic>>
          >(
            textTransformations,
            (value) =>
                pulumi.Input.encodeList<
                  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementTextTransformation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement(
      fieldToMatch: (() {
        final guardedValue = map['fieldToMatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementFieldToMatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      textTransformations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementTextTransformation
        >(
          map['textTransformations']!,
          (value) =>
              WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementTextTransformation.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
