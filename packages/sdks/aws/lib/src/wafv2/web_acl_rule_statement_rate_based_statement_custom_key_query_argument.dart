// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_custom_key_query_argument_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument {
  /// The name of the query argument to use.
  final pulumi.Input<String> name;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See `text_transformation` above for details.
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation>> textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument].
  /// [name] The name of the query argument to use.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See `text_transformation` above for details.
  WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument({
    required this.name,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'textTransformations': pulumi.Input.mapInputValue<List<WebAclRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument(
      name: (map['name'] as String).input(),
      textTransformations: (pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation>(map['textTransformations']!, (value) => WebAclRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

