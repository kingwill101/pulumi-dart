// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement {
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch>? fieldToMatch;
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation>>? textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement].
  /// [fieldToMatch] Optional.
  /// [textTransformations] Optional.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement({
    this.fieldToMatch,
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement(
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation>(guardedValue, (value) => WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
