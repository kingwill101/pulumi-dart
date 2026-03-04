// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_regex_pattern_set_reference_statement_field_to_match.dart';
import 'web_acl_rule_statement_regex_pattern_set_reference_statement_text_transformation.dart';

class WebAclRuleStatementRegexPatternSetReferenceStatement {
  /// The Amazon Resource Name (ARN) of the Regex Pattern Set that this statement references.
  final pulumi.Input<String> arn;

  /// Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  final pulumi.Input<
    WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatch
  >?
  fieldToMatch;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  final pulumi.Input<
    List<WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation>
  >
  textTransformations;

  /// Creates a new [WebAclRuleStatementRegexPatternSetReferenceStatement].
  /// [arn] The Amazon Resource Name (ARN) of the Regex Pattern Set that this statement references.
  /// [fieldToMatch] Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  WebAclRuleStatementRegexPatternSetReferenceStatement({
    required this.arn,
    this.fieldToMatch,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'fieldToMatch':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatch,
            Map<String, dynamic>
          >(fieldToMatch, (value) => value.toMap()),
      'textTransformations':
          pulumi.Input.mapInputValue<
            List<
              WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation
            >,
            List<Map<String, dynamic>>
          >(
            textTransformations,
            (value) =>
                pulumi.Input.encodeList<
                  WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory WebAclRuleStatementRegexPatternSetReferenceStatement.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementRegexPatternSetReferenceStatement(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      fieldToMatch: (() {
        final guardedValue = map['fieldToMatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      textTransformations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation
        >(
          map['textTransformations']!,
          (value) =>
              WebAclRuleStatementRegexPatternSetReferenceStatementTextTransformation.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
