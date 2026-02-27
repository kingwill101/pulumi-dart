// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match/web_acl_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match.dart';
import '../web_acl_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_text_transformation/web_acl_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement {
  /// Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  final WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch?
      fieldToMatch;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  final List<
          WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation>
      textTransformations;

  WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement({
    this.fieldToMatch,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldToMatchValue = fieldToMatch;
    if (fieldToMatchValue != null) {
      map['fieldToMatch'] = fieldToMatchValue.toMap();
    }
    map['textTransformations'] = pulumi.Input.encodeList<
        WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null
          ? null
          : WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch
              .fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      textTransformations: pulumi.Input.decodeList<
              WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation>(
          map['textTransformations'],
          (value) =>
              WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
