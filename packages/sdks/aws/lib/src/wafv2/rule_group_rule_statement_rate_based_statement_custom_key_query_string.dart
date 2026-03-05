// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_custom_key_query_string_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString {
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See Text Transformation above for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation>> textTransformations;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString].
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See Text Transformation above for details.
  RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString({
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textTransformations': pulumi.Input.mapInputValue<List<RuleGroupRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString(
      textTransformations: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation>(map['textTransformations']!, (value) => RuleGroupRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

