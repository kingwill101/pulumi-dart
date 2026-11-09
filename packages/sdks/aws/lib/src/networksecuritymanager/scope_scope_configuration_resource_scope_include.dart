// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_scope_configuration_resource_scope_include_expression.dart';

class ScopeScopeConfigurationResourceScopeInclude {
  /// Set of resource ARNs.
  final pulumi.Input<List<String>?>? explicitArns;
  /// Expression that matches resources. See `expression` Block below.
  final pulumi.Input<ScopeScopeConfigurationResourceScopeIncludeExpression?>? expression;

  /// Creates a new [ScopeScopeConfigurationResourceScopeInclude].
  /// [explicitArns] Set of resource ARNs.
  /// [expression] Expression that matches resources. See `expression` Block below.
  const ScopeScopeConfigurationResourceScopeInclude({
    this.explicitArns,
    this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'explicitArns': ?explicitArns,
      'expression': ?pulumi.Input.mapOptionalInputValue<ScopeScopeConfigurationResourceScopeIncludeExpression, Map<String, dynamic>>(expression, (value) => value.toMap()),
    };
  }

  factory ScopeScopeConfigurationResourceScopeInclude.fromMap(Map<String, dynamic> map) {
    return ScopeScopeConfigurationResourceScopeInclude(
      explicitArns: (() { final guardedValue = map['explicitArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeScopeConfigurationResourceScopeIncludeExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
