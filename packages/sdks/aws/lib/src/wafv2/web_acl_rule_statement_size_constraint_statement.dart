// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_size_constraint_statement_field_to_match.dart';
import 'web_acl_rule_statement_size_constraint_statement_text_transformation.dart';

class WebAclRuleStatementSizeConstraintStatement {
  /// Operator to use to compare the request part to the size setting. Valid values include: `EQ`, `NE`, `LE`, `LT`, `GE`, or `GT`.
  final String comparisonOperator;
  /// Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatch? fieldToMatch;
  /// Size, in bytes, to compare to the request part, after any transformations. Valid values are integers between 0 and 21474836480, inclusive.
  final int size;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  final List<WebAclRuleStatementSizeConstraintStatementTextTransformation> textTransformations;

  /// Creates a new [WebAclRuleStatementSizeConstraintStatement].
  /// [comparisonOperator] Operator to use to compare the request part to the size setting. Valid values include: `EQ`, `NE`, `LE`, `LT`, `GE`, or `GT`.
  /// [fieldToMatch] Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  /// [size] Size, in bytes, to compare to the request part, after any transformations. Valid values are integers between 0 and 21474836480, inclusive.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  WebAclRuleStatementSizeConstraintStatement({
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
      'textTransformations': pulumi.Input.encodeList<WebAclRuleStatementSizeConstraintStatementTextTransformation, Map<String, dynamic>>(textTransformations, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementSizeConstraintStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementSizeConstraintStatement(
      comparisonOperator: map['comparisonOperator'] as String,
      fieldToMatch: map['fieldToMatch'] == null ? null : WebAclRuleStatementSizeConstraintStatementFieldToMatch.fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      size: map['size'] as int,
      textTransformations: pulumi.Input.decodeList<WebAclRuleStatementSizeConstraintStatementTextTransformation>(map['textTransformations'], (value) => WebAclRuleStatementSizeConstraintStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

