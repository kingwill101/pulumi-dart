// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_custom_key_cookie_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementCustomKeyCookie {
  /// Name of the rule. Must be unique within the Web ACL.
  final pulumi.Input<String> name;
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementCustomKeyCookieTextTransformation>?>? textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKeyCookie].
  /// [name] Name of the rule. Must be unique within the Web ACL.
  /// [textTransformations] Optional.
  const WebAclRuleStatementRateBasedStatementCustomKeyCookie({
    required this.name,
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRateBasedStatementCustomKeyCookieTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementCustomKeyCookieTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementCustomKeyCookie.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementCustomKeyCookie(
      name: pulumi.Input.fromValue(map['name'] as String),
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementCustomKeyCookieTextTransformation>(guardedValue, (value) => WebAclRuleStatementRateBasedStatementCustomKeyCookieTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
