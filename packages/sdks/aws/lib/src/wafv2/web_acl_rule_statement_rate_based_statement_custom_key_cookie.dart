// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_custom_key_cookie_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementCustomKeyCookie {
  /// The name of the cookie to use.
  final pulumi.Input<String> name;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See `text_transformation` above for details.
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementCustomKeyCookieTextTransformation>> textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKeyCookie].
  /// [name] The name of the cookie to use.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See `text_transformation` above for details.
  const WebAclRuleStatementRateBasedStatementCustomKeyCookie({
    required this.name,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'textTransformations': pulumi.Input.mapInputValue<List<WebAclRuleStatementRateBasedStatementCustomKeyCookieTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementCustomKeyCookieTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementCustomKeyCookie.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementCustomKeyCookie(
      name: pulumi.Input.fromValue(map['name'] as String),
      textTransformations: pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementCustomKeyCookieTextTransformation>(map['textTransformations']!, (value) => WebAclRuleStatementRateBasedStatementCustomKeyCookieTextTransformation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

