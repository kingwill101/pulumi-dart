// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_custom_key_header_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementCustomKeyHeader {
  /// A friendly name of the rule group.
  final pulumi.Input<String> name;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See Text Transformation above for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation>> textTransformations;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementCustomKeyHeader].
  /// [name] A friendly name of the rule group.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See Text Transformation above for details.
  RuleGroupRuleStatementRateBasedStatementCustomKeyHeader({
    required this.name,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'textTransformations': pulumi.Input.mapInputValue<List<RuleGroupRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementCustomKeyHeader.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementCustomKeyHeader(
      name: (map['name'] as String).input(),
      textTransformations: (pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation>(map['textTransformations'], (value) => RuleGroupRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

