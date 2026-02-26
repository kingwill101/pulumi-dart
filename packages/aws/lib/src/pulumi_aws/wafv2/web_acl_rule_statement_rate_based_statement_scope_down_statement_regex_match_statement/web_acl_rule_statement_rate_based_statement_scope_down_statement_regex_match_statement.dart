// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_field_to_match/web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_field_to_match.dart';
import '../web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_text_transformation/web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See <span pulumi-lang-nodejs="`fieldToMatch`" pulumi-lang-dotnet="`FieldToMatch`" pulumi-lang-go="`fieldToMatch`" pulumi-lang-python="`field_to_match`" pulumi-lang-yaml="`fieldToMatch`" pulumi-lang-java="`fieldToMatch`">`field_to_match`</span> below for details.
  final WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatch?
      fieldToMatch;

  /// String representing the regular expression. Minimum of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and maximum of <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span> characters.
  final String regexString;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See <span pulumi-lang-nodejs="`textTransformation`" pulumi-lang-dotnet="`TextTransformation`" pulumi-lang-go="`textTransformation`" pulumi-lang-python="`text_transformation`" pulumi-lang-yaml="`textTransformation`" pulumi-lang-java="`textTransformation`">`text_transformation`</span> below for details.
  final List<
          WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation>
      textTransformations;

  WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement({
    this.fieldToMatch,
    required this.regexString,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldToMatchValue = fieldToMatch;
    if (fieldToMatchValue != null) {
      map['fieldToMatch'] = fieldToMatchValue.toMap();
    }
    map['regexString'] = regexString;
    map['textTransformations'] = Input.encodeList<
        WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null
          ? null
          : WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatch
              .fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      regexString: map['regexString'] as String,
      textTransformations: Input.decodeList<
              WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation>(
          map['textTransformations'],
          (value) =>
              WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementTextTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
