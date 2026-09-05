// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_sqli_match_statement_field_to_match.dart';
import 'web_acl_rule_statement_sqli_match_statement_text_transformation.dart';

class WebAclRuleStatementSqliMatchStatement {
  final pulumi.Input<WebAclRuleStatementSqliMatchStatementFieldToMatch?>? fieldToMatch;
  /// Sensitivity level for detecting SQL injection attacks. Valid values: `HIGH`, `LOW`.
  final pulumi.Input<String?>? sensitivityLevel;
  final pulumi.Input<List<WebAclRuleStatementSqliMatchStatementTextTransformation>?>? textTransformations;

  /// Creates a new [WebAclRuleStatementSqliMatchStatement].
  /// [fieldToMatch] Optional.
  /// [sensitivityLevel] Sensitivity level for detecting SQL injection attacks. Valid values: `HIGH`, `LOW`.
  /// [textTransformations] Optional.
  const WebAclRuleStatementSqliMatchStatement({
    this.fieldToMatch,
    this.sensitivityLevel,
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementSqliMatchStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'sensitivityLevel': ?sensitivityLevel,
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementSqliMatchStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementSqliMatchStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementSqliMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementSqliMatchStatement(
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementSqliMatchStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sensitivityLevel: (() { final guardedValue = map['sensitivityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementSqliMatchStatementTextTransformation>(guardedValue, (value) => WebAclRuleStatementSqliMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
