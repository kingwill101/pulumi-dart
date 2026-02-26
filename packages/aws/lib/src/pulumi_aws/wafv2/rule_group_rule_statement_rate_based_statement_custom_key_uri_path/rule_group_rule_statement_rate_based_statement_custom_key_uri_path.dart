// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_statement_rate_based_statement_custom_key_uri_path_text_transformation/rule_group_rule_statement_rate_based_statement_custom_key_uri_path_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementCustomKeyUriPath {
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See Text Transformation above for details.
  final List<
          RuleGroupRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation>
      textTransformations;

  RuleGroupRuleStatementRateBasedStatementCustomKeyUriPath({
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['textTransformations'] = Input.encodeList<
        RuleGroupRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementCustomKeyUriPath.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementCustomKeyUriPath(
      textTransformations: Input.decodeList<
              RuleGroupRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation>(
          map['textTransformations'],
          (value) =>
              RuleGroupRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
