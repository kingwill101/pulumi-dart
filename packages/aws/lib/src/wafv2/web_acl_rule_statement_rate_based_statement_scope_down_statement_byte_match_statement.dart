// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement {
  /// Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  final WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatch?
      fieldToMatch;

  /// Area within the portion of a web request that you want AWS WAF to search for `search_string`. Valid values include the following: `EXACTLY`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CONTAINS_WORD`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchStatement.html) for more information.
  final String positionalConstraint;

  /// String value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in `field_to_match`. The maximum length of the value is 50 bytes.
  final String searchString;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  final List<
          WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation>
      textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement].
  /// [fieldToMatch] Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  /// [positionalConstraint] Area within the portion of a web request that you want AWS WAF to search for `search_string`. Valid values include the following: `EXACTLY`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `CONTAINS_WORD`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchStatement.html) for more information.
  /// [searchString] String value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in `field_to_match`. The maximum length of the value is 50 bytes.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement({
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
    map['textTransformations'] = pulumi.Input.encodeList<
        WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null
          ? null
          : WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatch
              .fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      positionalConstraint: map['positionalConstraint'] as String,
      searchString: map['searchString'] as String,
      textTransformations: pulumi.Input.decodeList<
              WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation>(
          map['textTransformations'],
          (value) =>
              WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
