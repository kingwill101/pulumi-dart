// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_statement_regex_pattern_set_reference_statement_field_to_match/web_acl_rule_statement_regex_pattern_set_reference_statement_field_to_match.dart';
import '../web_acl_rule_statement_regex_pattern_set_reference_statement_text_transformation/web_acl_rule_statement_regex_pattern_set_reference_statement_text_transformation.dart';

class WebAclRuleStatementRegexPatternSetReferenceStatement {
  /// The Amazon Resource Name (ARN) of the Regex Pattern Set that this statement references.
  final String arn;

  /// Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  final WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatch?
      fieldToMatch;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  final List<
          WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation>
      textTransformations;

  WebAclRuleStatementRegexPatternSetReferenceStatement({
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
        WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementRegexPatternSetReferenceStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRegexPatternSetReferenceStatement(
      arn: map['arn'] as String,
      fieldToMatch: map['fieldToMatch'] == null
          ? null
          : WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatch
              .fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      textTransformations: Input.decodeList<
              WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation>(
          map['textTransformations'],
          (value) =>
              WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
