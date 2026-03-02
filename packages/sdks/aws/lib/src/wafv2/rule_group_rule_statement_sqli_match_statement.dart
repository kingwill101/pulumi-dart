// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_sqli_match_statement_field_to_match.dart';
import 'rule_group_rule_statement_sqli_match_statement_text_transformation.dart';

class RuleGroupRuleStatementSqliMatchStatement {
  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatch>? fieldToMatch;
  /// Sensitivity that you want AWS WAF to use to inspect for SQL injection attacks. Valid values include: `LOW`, `HIGH`.
  final pulumi.Input<String>? sensitivityLevel;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final pulumi.Input<List<RuleGroupRuleStatementSqliMatchStatementTextTransformation>> textTransformations;

  /// Creates a new [RuleGroupRuleStatementSqliMatchStatement].
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  /// [sensitivityLevel] Sensitivity that you want AWS WAF to use to inspect for SQL injection attacks. Valid values include: `LOW`, `HIGH`.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  RuleGroupRuleStatementSqliMatchStatement({
    this.fieldToMatch,
    this.sensitivityLevel,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementSqliMatchStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'sensitivityLevel': ?sensitivityLevel,
      'textTransformations': pulumi.Input.mapInputValue<List<RuleGroupRuleStatementSqliMatchStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementSqliMatchStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleStatementSqliMatchStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementSqliMatchStatement(
      fieldToMatch: map['fieldToMatch'] == null ? null : (RuleGroupRuleStatementSqliMatchStatementFieldToMatch.fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>())).input(),
      sensitivityLevel: map['sensitivityLevel'] == null ? null : (map['sensitivityLevel'] as String).input(),
      textTransformations: (pulumi.Input.decodeList<RuleGroupRuleStatementSqliMatchStatementTextTransformation>(map['textTransformations'], (value) => RuleGroupRuleStatementSqliMatchStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

