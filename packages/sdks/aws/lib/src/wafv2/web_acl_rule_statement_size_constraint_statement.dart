// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_size_constraint_statement_field_to_match.dart';
import 'web_acl_rule_statement_size_constraint_statement_text_transformation.dart';

class WebAclRuleStatementSizeConstraintStatement {
  /// Operator to use to compare the request part to the size setting. Valid values: `EQ`, `NE`, `LE`, `LT`, `GE`, `GT`.
  final pulumi.Input<String> comparisonOperator;
  /// Part of the web request that you want WAF to inspect. See Field to Match below.
  final pulumi.Input<WebAclRuleStatementSizeConstraintStatementFieldToMatch?>? fieldToMatch;
  /// Size, in bytes, to compare to the request part, after any transformations.
  final pulumi.Input<int> size;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. See Text Transformation below.
  final pulumi.Input<List<WebAclRuleStatementSizeConstraintStatementTextTransformation>?>? textTransformations;

  /// Creates a new [WebAclRuleStatementSizeConstraintStatement].
  /// [comparisonOperator] Operator to use to compare the request part to the size setting. Valid values: `EQ`, `NE`, `LE`, `LT`, `GE`, `GT`.
  /// [fieldToMatch] Part of the web request that you want WAF to inspect. See Field to Match below.
  /// [size] Size, in bytes, to compare to the request part, after any transformations.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. See Text Transformation below.
  const WebAclRuleStatementSizeConstraintStatement({
    required this.comparisonOperator,
    this.fieldToMatch,
    required this.size,
    this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'fieldToMatch': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementSizeConstraintStatementFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'size': size,
      'textTransformations': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementSizeConstraintStatementTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementSizeConstraintStatementTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementSizeConstraintStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementSizeConstraintStatement(
      comparisonOperator: pulumi.Input.fromValue(map['comparisonOperator'] as String),
      fieldToMatch: (() { final guardedValue = map['fieldToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementSizeConstraintStatementFieldToMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      size: pulumi.Input.fromValue((map['size'] as num).toInt()),
      textTransformations: (() { final guardedValue = map['textTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementSizeConstraintStatementTextTransformation>(guardedValue, (value) => WebAclRuleStatementSizeConstraintStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
