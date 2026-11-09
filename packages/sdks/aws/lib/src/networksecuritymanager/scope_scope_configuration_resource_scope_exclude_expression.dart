// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_scope_configuration_resource_scope_exclude_expression_and.dart';
import 'scope_scope_configuration_resource_scope_exclude_expression_criteria.dart';
import 'scope_scope_configuration_resource_scope_exclude_expression_not.dart';
import 'scope_scope_configuration_resource_scope_exclude_expression_or.dart';

class ScopeScopeConfigurationResourceScopeExcludeExpression {
  /// Matches resources that match every operand. Up to 20 blocks. See `and` Block below.
  final pulumi.Input<List<ScopeScopeConfigurationResourceScopeExcludeExpressionAnd>?>? ands;
  /// Matches resources that match the criteria. See `criteria` Block below.
  final pulumi.Input<ScopeScopeConfigurationResourceScopeExcludeExpressionCriteria?>? criteria;
  /// Matches resources that don't match the operand. Exactly 1 block. See `not` Block below.
  final pulumi.Input<ScopeScopeConfigurationResourceScopeExcludeExpressionNot?>? not;
  /// Matches resources that match at least one operand. Up to 20 blocks. See `or` Block below.
  final pulumi.Input<List<ScopeScopeConfigurationResourceScopeExcludeExpressionOr>?>? ors;

  /// Creates a new [ScopeScopeConfigurationResourceScopeExcludeExpression].
  /// [ands] Matches resources that match every operand. Up to 20 blocks. See `and` Block below.
  /// [criteria] Matches resources that match the criteria. See `criteria` Block below.
  /// [not] Matches resources that don't match the operand. Exactly 1 block. See `not` Block below.
  /// [ors] Matches resources that match at least one operand. Up to 20 blocks. See `or` Block below.
  const ScopeScopeConfigurationResourceScopeExcludeExpression({
    this.ands,
    this.criteria,
    this.not,
    this.ors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?pulumi.Input.mapOptionalInputValue<List<ScopeScopeConfigurationResourceScopeExcludeExpressionAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<ScopeScopeConfigurationResourceScopeExcludeExpressionAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'criteria': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationResourceScopeExcludeExpressionCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'not': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationResourceScopeExcludeExpressionNot, Map<String, dynamic>>(not, (value) => value.toMap()),
      'ors': ?pulumi.Input.mapOptionalInputValue<List<ScopeScopeConfigurationResourceScopeExcludeExpressionOr>, List<Map<String, dynamic>>>(ors, (value) => pulumi.Input.encodeList<ScopeScopeConfigurationResourceScopeExcludeExpressionOr, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScopeScopeConfigurationResourceScopeExcludeExpression.fromMap(Map<String, dynamic> map) {
    return ScopeScopeConfigurationResourceScopeExcludeExpression(
      ands: (() { final guardedValue = map['ands']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScopeScopeConfigurationResourceScopeExcludeExpressionAnd>(guardedValue, (value) => ScopeScopeConfigurationResourceScopeExcludeExpressionAnd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      criteria: (() { final guardedValue = map['criteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationResourceScopeExcludeExpressionCriteria.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      not: (() { final guardedValue = map['not']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationResourceScopeExcludeExpressionNot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ors: (() { final guardedValue = map['ors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScopeScopeConfigurationResourceScopeExcludeExpressionOr>(guardedValue, (value) => ScopeScopeConfigurationResourceScopeExcludeExpressionOr.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
