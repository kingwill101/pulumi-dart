// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_custom_key_query_argument_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument {
  /// A friendly name of the rule group.
  final pulumi.Input<String> name;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See Text Transformation above for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation>> textTransformations;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument].
  /// [name] A friendly name of the rule group.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See Text Transformation above for details.
  RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument({
    required this.name,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'textTransformations': pulumi.Input.mapInputValue<List<RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument(
      name: pulumi.Input.fromValue(map['name'] as String),
      textTransformations: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation>(map['textTransformations']!, (value) => RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

