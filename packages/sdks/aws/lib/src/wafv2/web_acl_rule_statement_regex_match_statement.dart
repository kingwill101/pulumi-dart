// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_regex_match_statement_field_to_match.dart';
import 'web_acl_rule_statement_regex_match_statement_text_transformation.dart';

class WebAclRuleStatementRegexMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  final pulumi.Input<WebAclRuleStatementRegexMatchStatementFieldToMatch>? fieldToMatch;
  /// String representing the regular expression. Minimum of `1` and maximum of `512` characters.
  final pulumi.Input<String> regexString;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  final pulumi.Input<List<WebAclRuleStatementRegexMatchStatementTextTransformation>> textTransformations;

  /// Creates a new [WebAclRuleStatementRegexMatchStatement].
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  /// [regexString] String representing the regular expression. Minimum of `1` and maximum of `512` characters.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  WebAclRuleStatementRegexMatchStatement({
    this.fieldToMatch,
    required this.regexString,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRegexMatchStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'regexString': regexString,
      'textTransformations': pulumi.Input.mapInputValue<List<WebAclRuleStatementRegexMatchStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRegexMatchStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRegexMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRegexMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null ? null : (WebAclRuleStatementRegexMatchStatementFieldToMatch.fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>())).input(),
      regexString: (map['regexString'] as String).input(),
      textTransformations: (pulumi.Input.decodeList<WebAclRuleStatementRegexMatchStatementTextTransformation>(map['textTransformations'], (value) => WebAclRuleStatementRegexMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

