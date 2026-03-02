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
      simpleQuery: map['simpleQuery'] == null ? null : (map['simpleQuery']! as bool).input(),
      templateName: map['templateName'] == null ? null : (map['templateName']! as String).input(),
      templateSql: map['templateSql'] == null ? null : (map['templateSql']! as String).input(),
    );
  }
}

