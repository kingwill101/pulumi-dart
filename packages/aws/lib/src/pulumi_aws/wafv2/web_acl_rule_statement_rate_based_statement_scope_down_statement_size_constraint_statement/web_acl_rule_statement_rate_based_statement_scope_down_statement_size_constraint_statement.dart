// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_statement_rate_based_statement_scope_down_statement_size_constraint_statement_field_to_match/web_acl_rule_statement_rate_based_statement_scope_down_statement_size_constraint_statement_field_to_match.dart';
import '../web_acl_rule_statement_rate_based_statement_scope_down_statement_size_constraint_statement_text_transformation/web_acl_rule_statement_rate_based_statement_scope_down_statement_size_constraint_statement_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement {
  /// Operator to use to compare the request part to the size setting. Valid values include: `EQ`, `NE`, `LE`, `LT`, `GE`, or `GT`.
  final String comparisonOperator;

  /// Part of a web request that you want AWS WAF to inspect. See <span pulumi-lang-nodejs="`fieldToMatch`" pulumi-lang-dotnet="`FieldToMatch`" pulumi-lang-go="`fieldToMatch`" pulumi-lang-python="`field_to_match`" pulumi-lang-yaml="`fieldToMatch`" pulumi-lang-java="`fieldToMatch`">`field_to_match`</span> below for details.
  final WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatch?
      fieldToMatch;

  /// Size, in bytes, to compare to the request part, after any transformations. Valid values are integers between 0 and 21474836480, inclusive.
  final int size;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. At least one transformation is required. See <span pulumi-lang-nodejs="`textTransformation`" pulumi-lang-dotnet="`TextTransformation`" pulumi-lang-go="`textTransformation`" pulumi-lang-python="`text_transformation`" pulumi-lang-yaml="`textTransformation`" pulumi-lang-java="`textTransformation`">`text_transformation`</span> below for details.
  final List<
          WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation>
      textTransformations;

  WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement({
    required this.comparisonOperator,
    this.fieldToMatch,
    required this.size,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparisonOperator'] = comparisonOperator;
    final fieldToMatchValue = fieldToMatch;
    if (fieldToMatchValue != null) {
      map['fieldToMatch'] = fieldToMatchValue.toMap();
    }
    map['size'] = size;
    map['textTransformations'] = Input.encodeList<
        WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement(
      comparisonOperator: map['comparisonOperator'] as String,
      fieldToMatch: map['fieldToMatch'] == null
          ? null
          : WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatch
              .fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      size: map['size'] as int,
      textTransformations: Input.decodeList<
              WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation>(
          map['textTransformations'],
          (value) =>
              WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
