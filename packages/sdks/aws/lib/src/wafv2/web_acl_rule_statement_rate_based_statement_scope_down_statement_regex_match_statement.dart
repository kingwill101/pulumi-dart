// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_field_to_match.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement {
  /// Part of the web request that you want WAF to inspect. See Field to Match below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatch?>? fieldToMatch;
  /// Regular expression pattern to match against the web request component.
  final pulumi.Input<String> regexString;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. See Text Transformation below.
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation>?>? textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement].
  /// [fieldToMatch] Part of the web request that you want WAF to inspect. See Field to Match below.
  /// [regexString] Regular expression pattern to match against the web request component.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. See Text Transformation below.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement({
    this.fieldToMatch,
    required this.regexString,
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'regexString': regexString,
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement(
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexString: pulumi.Input.fromValue(map['regexString'] as String),
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation>(guardedValue, (value) => WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
