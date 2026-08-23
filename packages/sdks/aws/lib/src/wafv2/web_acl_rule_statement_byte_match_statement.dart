// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_byte_match_statement_field_to_match.dart';
import 'web_acl_rule_statement_byte_match_statement_text_transformation.dart';

class WebAclRuleStatementByteMatchStatement {
  /// Part of the web request that you want WAF to inspect. See Field to Match below.
  final pulumi.Input<WebAclRuleStatementByteMatchStatementFieldToMatch>? fieldToMatch;
  /// Area within the portion of the web request that you want WAF to search for `searchString`. Valid values: `EXACTLY`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CONTAINS_WORD`.
  final pulumi.Input<String> positionalConstraint;
  /// String value to search for within the request (1-200 characters).
  final pulumi.Input<String> searchString;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. See Text Transformation below.
  final pulumi.Input<List<WebAclRuleStatementByteMatchStatementTextTransformation>>? textTransformations;

  /// Creates a new [WebAclRuleStatementByteMatchStatement].
  /// [fieldToMatch] Part of the web request that you want WAF to inspect. See Field to Match below.
  /// [positionalConstraint] Area within the portion of the web request that you want WAF to search for `searchString`. Valid values: `EXACTLY`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CONTAINS_WORD`.
  /// [searchString] String value to search for within the request (1-200 characters).
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. See Text Transformation below.
  const WebAclRuleStatementByteMatchStatement({
    this.fieldToMatch,
    required this.positionalConstraint,
    required this.searchString,
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementByteMatchStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'positionalConstraint': positionalConstraint,
      'searchString': searchString,
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementByteMatchStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementByteMatchStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementByteMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementByteMatchStatement(
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementByteMatchStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      positionalConstraint: pulumi.Input.fromValue(map['positionalConstraint'] as String),
      searchString: pulumi.Input.fromValue(map['searchString'] as String),
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementByteMatchStatementTextTransformation>(guardedValue, (value) => WebAclRuleStatementByteMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
