// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_xss_match_statement_field_to_match.dart';
import 'rule_group_rule_statement_xss_match_statement_text_transformation.dart';

class RuleGroupRuleStatementXssMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final RuleGroupRuleStatementXssMatchStatementFieldToMatch? fieldToMatch;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final List<RuleGroupRuleStatementXssMatchStatementTextTransformation>
      textTransformations;

  /// Creates a new [RuleGroupRuleStatementXssMatchStatement].
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  RuleGroupRuleStatementXssMatchStatement({
    this.fieldToMatch,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldToMatchValue = fieldToMatch;
    if (fieldToMatchValue != null) {
      map['fieldToMatch'] = fieldToMatchValue.toMap();
    }
    map['textTransformations'] = pulumi.Input.encodeList<
        RuleGroupRuleStatementXssMatchStatementTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory RuleGroupRuleStatementXssMatchStatement.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementXssMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null
          ? null
          : RuleGroupRuleStatementXssMatchStatementFieldToMatch.fromMap(
              (map['fieldToMatch'] as Map).cast<String, dynamic>()),
      textTransformations: pulumi.Input.decodeList<
              RuleGroupRuleStatementXssMatchStatementTextTransformation>(
          map['textTransformations'],
          (value) =>
              RuleGroupRuleStatementXssMatchStatementTextTransformation.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
