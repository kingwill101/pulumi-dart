// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_custom_key_query_argument_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument {
  /// Name of the rule. Must be unique within the Web ACL.
  final pulumi.Input<String> name;
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation>?>? textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument].
  /// [name] Name of the rule. Must be unique within the Web ACL.
  /// [textTransformations] Optional.
  const WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument({
    required this.name,
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument(
      name: pulumi.Input.fromValue(map['name'] as String),
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation>(guardedValue, (value) => WebAclRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
