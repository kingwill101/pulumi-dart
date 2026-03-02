// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_size_constraint_statement_field_to_match.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_size_constraint_statement_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement {
  /// Operator to use to compare the request part to the size setting. Valid values include: `EQ`, `NE`, `LE`, `LT`, `GE`, or `GT`.
  final pulumi.Input<String> comparisonOperator;
  /// Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatch>? fieldToMatch;
  /// Size, in bytes, to compare to the request part, after any transformations. Valid values are integers between 0 and 21474836480, inclusive.
  final pulumi.Input<int> size;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation>> textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement].
  /// [comparisonOperator] Operator to use to compare the request part to the size setting. Valid values include: `EQ`, `NE`, `LE`, `LT`, `GE`, or `GT`.
  /// [fieldToMatch] Part of a web request that you want AWS WAF to inspect. See `field_to_match` below for details.
  /// [size] Size, in bytes, to compare to the request part, after any transformations. Valid values are integers between 0 and 21474836480, inclusive.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See `text_transformation` below for details.
  WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement({
    required this.comparisonOperator,
    this.fieldToMatch,
    required this.size,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'size': size,
      'textTransformations': pulumi.Input.mapInputValue<List<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement(
      comparisonOperator: (map['comparisonOperator'] as String).input(),
      fieldToMatch: map['fieldToMatch'] == null ? null : ((WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatch.fromMap((map['fieldToMatch']! as Map).cast<String, dynamic>())).input()).input(),
      size: (map['size'] as int).input(),
      textTransformations: (pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation>(map['textTransformations']!, (value) => WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

