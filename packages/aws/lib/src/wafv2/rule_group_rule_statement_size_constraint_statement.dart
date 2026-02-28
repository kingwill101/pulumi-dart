// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_size_constraint_statement_field_to_match.dart';
import 'rule_group_rule_statement_size_constraint_statement_text_transformation.dart';

class RuleGroupRuleStatementSizeConstraintStatement {
  /// The operator to use to compare the request part to the size setting. Valid values include: `EQ`, `NE`, `LE`, `LT`, `GE`, or `GT`.
  final String comparisonOperator;
  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final RuleGroupRuleStatementSizeConstraintStatementFieldToMatch? fieldToMatch;
  /// The size, in bytes, to compare to the request part, after any transformations. Valid values are integers between 0 and 21474836480, inclusive.
  final int size;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final List<RuleGroupRuleStatementSizeConstraintStatementTextTransformation> textTransformations;

  /// Creates a new [RuleGroupRuleStatementSizeConstraintStatement].
  /// [comparisonOperator] The operator to use to compare the request part to the size setting. Valid values include: `EQ`, `NE`, `LE`, `LT`, `GE`, or `GT`.
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  /// [size] The size, in bytes, to compare to the request part, after any transformations. Valid values are integers between 0 and 21474836480, inclusive.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  RuleGroupRuleStatementSizeConstraintStatement({
    required this.comparisonOperator,
    this.fieldToMatch,
    required this.size,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'fieldToMatch': ?fieldToMatch == null ? null : fieldToMatch!.toMap(),
      'size': size,
      'textTransformations': pulumi.Input.encodeList<RuleGroupRuleStatementSizeConstraintStatementTextTransformation, Map<String, dynamic>>(textTransformations, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleStatementSizeConstraintStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementSizeConstraintStatement(
      comparisonOperator: map['comparisonOperator'] as String,
      fieldToMatch: map['fieldToMatch'] == null ? null : RuleGroupRuleStatementSizeConstraintStatementFieldToMatch.fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      size: map['size'] as int,
      textTransformations: pulumi.Input.decodeList<RuleGroupRuleStatementSizeConstraintStatementTextTransformation>(map['textTransformations'], (value) => RuleGroupRuleStatementSizeConstraintStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

