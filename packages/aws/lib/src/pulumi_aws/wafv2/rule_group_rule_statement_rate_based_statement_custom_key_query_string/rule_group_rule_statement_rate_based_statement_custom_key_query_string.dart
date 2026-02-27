// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_group_rule_statement_rate_based_statement_custom_key_query_string_text_transformation/rule_group_rule_statement_rate_based_statement_custom_key_query_string_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString {
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See Text Transformation above for details.
  final List<
          RuleGroupRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation>
      textTransformations;

  RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString({
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['textTransformations'] = pulumi.Input.encodeList<
        RuleGroupRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString(
      textTransformations: pulumi.Input.decodeList<
              RuleGroupRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation>(
          map['textTransformations'],
          (value) =>
              RuleGroupRuleStatementRateBasedStatementCustomKeyQueryStringTextTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
