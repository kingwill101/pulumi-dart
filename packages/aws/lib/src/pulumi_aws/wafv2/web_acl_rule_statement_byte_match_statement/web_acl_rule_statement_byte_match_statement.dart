// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_statement_byte_match_statement_field_to_match/web_acl_rule_statement_byte_match_statement_field_to_match.dart';
import '../web_acl_rule_statement_byte_match_statement_text_transformation/web_acl_rule_statement_byte_match_statement_text_transformation.dart';

class WebAclRuleStatementByteMatchStatement {
  /// Part of a web request that you want AWS WAF to inspect. See <span pulumi-lang-nodejs="`fieldToMatch`" pulumi-lang-dotnet="`FieldToMatch`" pulumi-lang-go="`fieldToMatch`" pulumi-lang-python="`field_to_match`" pulumi-lang-yaml="`fieldToMatch`" pulumi-lang-java="`fieldToMatch`">`field_to_match`</span> below for details.
  final WebAclRuleStatementByteMatchStatementFieldToMatch? fieldToMatch;

  /// Area within the portion of a web request that you want AWS WAF to search for <span pulumi-lang-nodejs="`searchString`" pulumi-lang-dotnet="`SearchString`" pulumi-lang-go="`searchString`" pulumi-lang-python="`search_string`" pulumi-lang-yaml="`searchString`" pulumi-lang-java="`searchString`">`search_string`</span>. Valid values include the following: `EXACTLY`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CONTAINS_WORD`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchStatement.html) for more information.
  final String positionalConstraint;

  /// String value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in <span pulumi-lang-nodejs="`fieldToMatch`" pulumi-lang-dotnet="`FieldToMatch`" pulumi-lang-go="`fieldToMatch`" pulumi-lang-python="`field_to_match`" pulumi-lang-yaml="`fieldToMatch`" pulumi-lang-java="`fieldToMatch`">`field_to_match`</span>. The maximum length of the value is 50 bytes.
  final String searchString;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See <span pulumi-lang-nodejs="`textTransformation`" pulumi-lang-dotnet="`TextTransformation`" pulumi-lang-go="`textTransformation`" pulumi-lang-python="`text_transformation`" pulumi-lang-yaml="`textTransformation`" pulumi-lang-java="`textTransformation`">`text_transformation`</span> below for details.
  final List<WebAclRuleStatementByteMatchStatementTextTransformation>
      textTransformations;

  WebAclRuleStatementByteMatchStatement({
    this.fieldToMatch,
    required this.positionalConstraint,
    required this.searchString,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldToMatchValue = fieldToMatch;
    if (fieldToMatchValue != null) {
      map['fieldToMatch'] = fieldToMatchValue.toMap();
    }
    map['positionalConstraint'] = positionalConstraint;
    map['searchString'] = searchString;
    map['textTransformations'] = Input.encodeList<
        WebAclRuleStatementByteMatchStatementTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementByteMatchStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementByteMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null
          ? null
          : WebAclRuleStatementByteMatchStatementFieldToMatch.fromMap(
              (map['fieldToMatch'] as Map).cast<String, dynamic>()),
      positionalConstraint: map['positionalConstraint'] as String,
      searchString: map['searchString'] as String,
      textTransformations: Input.decodeList<
              WebAclRuleStatementByteMatchStatementTextTransformation>(
          map['textTransformations'],
          (value) =>
              WebAclRuleStatementByteMatchStatementTextTransformation.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
