// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match/web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match.dart';
import '../web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_text_transformation/web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatement {
  /// The Amazon Resource Name (ARN) of the Regex Pattern Set that this statement references.
  final String arn;

  /// Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  final WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatch?
      fieldToMatch;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  final List<
          WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation>
      textTransformations;

  WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatement({
    required this.arn,
    this.fieldToMatch,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final fieldToMatchValue = fieldToMatch;
    if (fieldToMatchValue != null) {
      map['fieldToMatch'] = fieldToMatchValue.toMap();
    }
    map['textTransformations'] = Input.encodeList<
        WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatement(
      arn: map['arn'] as String,
      fieldToMatch: map['fieldToMatch'] == null
          ? null
          : WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatch
              .fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      textTransformations: Input.decodeList<
              WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation>(
          map['textTransformations'],
          (value) =>
              WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
