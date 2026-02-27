// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_parameter.dart';

/// Define a system parameter rule mapping system parameter definitions to methods.
class SystemParameterRule {
  /// Define parameters. Multiple names may be defined for a parameter. For a given method call, only one of them should be used. If multiple names are used the behavior is implementation-dependent. If none of the specified names are present the behavior is parameter-dependent.
  final List<SystemParameter>? parameters;

  /// Selects the methods to which this rule applies. Use '*' to indicate all methods in all APIs. Refer to selector for syntax details.
  final String? selector;

  SystemParameterRule({
    this.parameters,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] =
          pulumi.Input.encodeList<SystemParameter, Map<String, dynamic>>(
              parametersValue, (value) => value.toMap());
    }
    final selectorValue = selector;
    if (selectorValue != null) {
      map['selector'] = selectorValue;
    }
    return map;
  }

  factory SystemParameterRule.fromMap(Map<String, dynamic> map) {
    return SystemParameterRule(
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<SystemParameter>(
              map['parameters'],
              (value) => SystemParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      selector: map['selector'] == null ? null : map['selector'] as String,
    );
  }
}
