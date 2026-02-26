// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_statement_rate_based_statement_custom_key_query_argument_text_transformation/rule_group_rule_statement_rate_based_statement_custom_key_query_argument_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument {
  /// A friendly name of the rule group.
  final String name;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See Text Transformation above for details.
  final List<
          RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation>
      textTransformations;

  RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument({
    required this.name,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['textTransformations'] = Input.encodeList<
        RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument(
      name: map['name'] as String,
      textTransformations: Input.decodeList<
              RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation>(
          map['textTransformations'],
          (value) =>
              RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgumentTextTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
