// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_custom_key_uri_path_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementCustomKeyUriPath {
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation>?>? textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKeyUriPath].
  /// [textTransformations] Optional.
  const WebAclRuleStatementRateBasedStatementCustomKeyUriPath({
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementCustomKeyUriPath.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementCustomKeyUriPath(
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation>(guardedValue, (value) => WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
