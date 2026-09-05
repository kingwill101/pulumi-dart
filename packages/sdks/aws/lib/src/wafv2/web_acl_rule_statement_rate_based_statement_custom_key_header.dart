// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_custom_key_header_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementCustomKeyHeader {
  /// Name of the rule. Must be unique within the Web ACL.
  final pulumi.Input<String> name;
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation>?>? textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKeyHeader].
  /// [name] Name of the rule. Must be unique within the Web ACL.
  /// [textTransformations] Optional.
  const WebAclRuleStatementRateBasedStatementCustomKeyHeader({
    required this.name,
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementCustomKeyHeader.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementCustomKeyHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation>(guardedValue, (value) => WebAclRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
