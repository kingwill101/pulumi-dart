// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AdvancedQueryTemplate resources.
class AdvancedQueryTemplateState {
  /// Distinguish whether the current template is a simple query
  final pulumi.Input<bool>? simpleQuery;
  /// The name of the resource
  final pulumi.Input<String>? templateName;
  /// SQL content saved on behalf of the current template
  final pulumi.Input<String>? templateSql;

  /// Creates a new [AdvancedQueryTemplateState].
  /// [simpleQuery] Distinguish whether the current template is a simple query
  /// [templateName] The name of the resource
  /// [templateSql] SQL content saved on behalf of the current template
  AdvancedQueryTemplateState({
    this.simpleQuery,
    this.templateName,
    this.templateSql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleQuery': ?simpleQuery,
      'templateName': ?templateName,
      'templateSql': ?templateSql,
    };
  }

  factory AdvancedQueryTemplateState.fromMap(Map<String, dynamic> map) {
    return AdvancedQueryTemplateState(
      simpleQuery: (() { final guardedValue = map['simpleQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateSql: (() { final guardedValue = map['templateSql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

