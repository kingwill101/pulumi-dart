// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_scope_configuration_resource_scope_include_expression_and.dart';
import 'scope_scope_configuration_resource_scope_include_expression_criteria.dart';
import 'scope_scope_configuration_resource_scope_include_expression_not.dart';
import 'scope_scope_configuration_resource_scope_include_expression_or.dart';

class ScopeScopeConfigurationResourceScopeIncludeExpression {
  /// Matches resources that match every operand. Up to 20 blocks. See `and` Block below.
  final pulumi.Input<List<ScopeScopeConfigurationResourceScopeIncludeExpressionAnd>?>? ands;
  /// Matches resources that match the criteria. See `criteria` Block below.
  final pulumi.Input<ScopeScopeConfigurationResourceScopeIncludeExpressionCriteria?>? criteria;
  /// Matches resources that don't match the operand. Exactly 1 block. See `not` Block below.
  final pulumi.Input<ScopeScopeConfigurationResourceScopeIncludeExpressionNot?>? not;
  /// Matches resources that match at least one operand. Up to 20 blocks. See `or` Block below.
  final pulumi.Input<List<ScopeScopeConfigurationResourceScopeIncludeExpressionOr>?>? ors;

  /// Creates a new [ScopeScopeConfigurationResourceScopeIncludeExpression].
  /// [ands] Matches resources that match every operand. Up to 20 blocks. See `and` Block below.
  /// [criteria] Matches resources that match the criteria. See `criteria` Block below.
  /// [not] Matches resources that don't match the operand. Exactly 1 block. See `not` Block below.
  /// [ors] Matches resources that match at least one operand. Up to 20 blocks. See `or` Block below.
  const ScopeScopeConfigurationResourceScopeIncludeExpression({
    this.ands,
    this.criteria,
    this.not,
    this.ors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?pulumi.Input.mapOptionalInputValue<List<ScopeScopeConfigurationResourceScopeIncludeExpressionAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<ScopeScopeConfigurationResourceScopeIncludeExpressionAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'criteria': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationResourceScopeIncludeExpressionCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'not': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationResourceScopeIncludeExpressionNot, Map<String, dynamic>>(not, (value) => value.toMap()),
      'ors': ?pulumi.Input.mapOptionalInputValue<List<ScopeScopeConfigurationResourceScopeIncludeExpressionOr>, List<Map<String, dynamic>>>(ors, (value) => pulumi.Input.encodeList<ScopeScopeConfigurationResourceScopeIncludeExpressionOr, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScopeScopeConfigurationResourceScopeIncludeExpression.fromMap(Map<String, dynamic> map) {
    return ScopeScopeConfigurationResourceScopeIncludeExpression(
      ands: (() { final guardedValue = map['ands']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScopeScopeConfigurationResourceScopeIncludeExpressionAnd>(guardedValue, (value) => ScopeScopeConfigurationResourceScopeIncludeExpressionAnd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      criteria: (() { final guardedValue = map['criteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationResourceScopeIncludeExpressionCriteria.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      not: (() { final guardedValue = map['not']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationResourceScopeIncludeExpressionNot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ors: (() { final guardedValue = map['ors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScopeScopeConfigurationResourceScopeIncludeExpressionOr>(guardedValue, (value) => ScopeScopeConfigurationResourceScopeIncludeExpressionOr.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
