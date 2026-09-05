// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_custom_key_query_string_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementCustomKeyQueryString {
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation>?>? textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKeyQueryString].
  /// [textTransformations] Optional.
  const WebAclRuleStatementRateBasedStatementCustomKeyQueryString({
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementCustomKeyQueryString.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementCustomKeyQueryString(
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation>(guardedValue, (value) => WebAclRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
