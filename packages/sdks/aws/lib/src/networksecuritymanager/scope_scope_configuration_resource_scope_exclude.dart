// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_scope_configuration_resource_scope_exclude_expression.dart';

class ScopeScopeConfigurationResourceScopeExclude {
  /// Set of resource ARNs.
  final pulumi.Input<List<String>?>? explicitArns;
  /// Expression that matches resources. See `expression` Block below.
  final pulumi.Input<ScopeScopeConfigurationResourceScopeExcludeExpression?>? expression;

  /// Creates a new [ScopeScopeConfigurationResourceScopeExclude].
  /// [explicitArns] Set of resource ARNs.
  /// [expression] Expression that matches resources. See `expression` Block below.
  const ScopeScopeConfigurationResourceScopeExclude({
    this.explicitArns,
    this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'explicitArns': ?explicitArns,
      'expression': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationResourceScopeExcludeExpression, Map<String, dynamic>>(expression, (value) => value.toMap()),
    };
  }

  factory ScopeScopeConfigurationResourceScopeExclude.fromMap(Map<String, dynamic> map) {
    return ScopeScopeConfigurationResourceScopeExclude(
      explicitArns: (() { final guardedValue = map['explicitArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationResourceScopeExcludeExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
