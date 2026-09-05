// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_regex_pattern_set_reference_statement_field_to_match.dart';
import 'web_acl_rule_statement_regex_pattern_set_reference_statement_text_transformation.dart';

class WebAclRuleStatementRegexPatternSetReferenceStatement {
  /// ARN of the regex pattern set to reference.
  final pulumi.Input<String> arn;
  /// Part of the web request that you want WAF to inspect. See Field to Match below.
  final pulumi.Input<WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatch?>? fieldToMatch;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. See Text Transformation below.
  final pulumi.Input<List<WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation>?>? textTransformations;

  /// Creates a new [WebAclRuleStatementRegexPatternSetReferenceStatement].
  /// [arn] ARN of the regex pattern set to reference.
  /// [fieldToMatch] Part of the web request that you want WAF to inspect. See Field to Match below.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. See Text Transformation below.
  const WebAclRuleStatementRegexPatternSetReferenceStatement({
    required this.arn,
    this.fieldToMatch,
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRegexPatternSetReferenceStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRegexPatternSetReferenceStatement(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation>(guardedValue, (value) => WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
