// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_sqli_match_statement_field_to_match.dart';
import 'web_acl_rule_statement_sqli_match_statement_text_transformation.dart';

class WebAclRuleStatementSqliMatchStatement {
  /// Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  final WebAclRuleStatementSqliMatchStatementFieldToMatch? fieldToMatch;
  /// Sensitivity that you want AWS WAF to use to inspect for SQL injection attacks. Valid values include: `LOW`, `HIGH`.
  final String? sensitivityLevel;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  final List<WebAclRuleStatementSqliMatchStatementTextTransformation> textTransformations;

  /// Creates a new [WebAclRuleStatementSqliMatchStatement].
  /// [fieldToMatch] Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  /// [sensitivityLevel] Sensitivity that you want AWS WAF to use to inspect for SQL injection attacks. Valid values include: `LOW`, `HIGH`.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  WebAclRuleStatementSqliMatchStatement({
    this.fieldToMatch,
    this.sensitivityLevel,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?fieldToMatch == null ? null : fieldToMatch!.toMap(),
      'sensitivityLevel': ?sensitivityLevel,
      'textTransformations': pulumi.Input.encodeList<WebAclRuleStatementSqliMatchStatementTextTransformation, Map<String, dynamic>>(textTransformations, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementSqliMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementSqliMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null ? null : WebAclRuleStatementSqliMatchStatementFieldToMatch.fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      sensitivityLevel: map['sensitivityLevel'] == null ? null : map['sensitivityLevel'] as String,
      textTransformations: pulumi.Input.decodeList<WebAclRuleStatementSqliMatchStatementTextTransformation>(map['textTransformations'], (value) => WebAclRuleStatementSqliMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

