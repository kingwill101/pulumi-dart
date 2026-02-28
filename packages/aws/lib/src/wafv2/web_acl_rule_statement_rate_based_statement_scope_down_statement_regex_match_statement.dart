// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_field_to_match.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  final WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatch? fieldToMatch;
  /// String representing the regular expression. Minimum of `1` and maximum of `512` characters.
  final String regexString;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  final List<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation> textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement].
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  /// [regexString] String representing the regular expression. Minimum of `1` and maximum of `512` characters.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement({
    this.fieldToMatch,
    required this.regexString,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?fieldToMatch == null ? null : fieldToMatch!.toMap(),
      'regexString': regexString,
      'textTransformations': pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation, Map<String, dynamic>>(textTransformations, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null ? null : WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatch.fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      regexString: map['regexString'] as String,
      textTransformations: pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation>(map['textTransformations'], (value) => WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

