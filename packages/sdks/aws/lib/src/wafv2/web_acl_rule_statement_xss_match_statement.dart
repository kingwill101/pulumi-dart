// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_xss_match_statement_field_to_match.dart';
import 'web_acl_rule_statement_xss_match_statement_text_transformation.dart';

class WebAclRuleStatementXssMatchStatement {
  final pulumi.Input<WebAclRuleStatementXssMatchStatementFieldToMatch>? fieldToMatch;
  final pulumi.Input<List<WebAclRuleStatementXssMatchStatementTextTransformation>>? textTransformations;

  /// Creates a new [WebAclRuleStatementXssMatchStatement].
  /// [fieldToMatch] Optional.
  /// [textTransformations] Optional.
  const WebAclRuleStatementXssMatchStatement({
    this.fieldToMatch,
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementXssMatchStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementXssMatchStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementXssMatchStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementXssMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementXssMatchStatement(
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementXssMatchStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementXssMatchStatementTextTransformation>(guardedValue, (value) => WebAclRuleStatementXssMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
