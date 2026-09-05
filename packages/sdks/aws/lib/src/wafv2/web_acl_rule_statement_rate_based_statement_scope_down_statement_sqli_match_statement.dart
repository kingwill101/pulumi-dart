// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_sqli_match_statement_field_to_match.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_sqli_match_statement_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement {
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatch?>? fieldToMatch;
  /// Sensitivity level for detecting SQL injection attacks. Valid values: `HIGH`, `LOW`.
  final pulumi.Input<String?>? sensitivityLevel;
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation>?>? textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement].
  /// [fieldToMatch] Optional.
  /// [sensitivityLevel] Sensitivity level for detecting SQL injection attacks. Valid values: `HIGH`, `LOW`.
  /// [textTransformations] Optional.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement({
    this.fieldToMatch,
    this.sensitivityLevel,
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'sensitivityLevel': ?sensitivityLevel,
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement(
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sensitivityLevel: (() { final guardedValue = map['sensitivityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation>(guardedValue, (value) => WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
