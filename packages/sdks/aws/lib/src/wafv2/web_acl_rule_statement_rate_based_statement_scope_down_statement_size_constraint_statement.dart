// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_size_constraint_statement_field_to_match.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_size_constraint_statement_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement {
  /// Operator to use to compare the request part to the size setting. Valid values: `EQ`, `NE`, `LE`, `LT`, `GE`, `GT`.
  final pulumi.Input<String> comparisonOperator;
  /// Part of the web request that you want WAF to inspect. See Field to Match below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatch?>? fieldToMatch;
  /// Size, in bytes, to compare to the request part, after any transformations.
  final pulumi.Input<int> size;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. See Text Transformation below.
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation>?>? textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement].
  /// [comparisonOperator] Operator to use to compare the request part to the size setting. Valid values: `EQ`, `NE`, `LE`, `LT`, `GE`, `GT`.
  /// [fieldToMatch] Part of the web request that you want WAF to inspect. See Field to Match below.
  /// [size] Size, in bytes, to compare to the request part, after any transformations.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. See Text Transformation below.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement({
    required this.comparisonOperator,
    this.fieldToMatch,
    required this.size,
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'size': size,
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement(
      comparisonOperator: pulumi.Input.fromValue(map['comparisonOperator'] as String),
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      size: pulumi.Input.fromValue((map['size'] as num).toInt()),
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation>(guardedValue, (value) => WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
