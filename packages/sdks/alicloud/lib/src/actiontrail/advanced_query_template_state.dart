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
    pulumi.Output<bool>? simpleQuery,
    pulumi.Output<String>? templateName,
    pulumi.Output<String>? templateSql,
  }) :
      simpleQuery = pulumi.Input.asOptionalInput<bool>(simpleQuery),
      templateName = pulumi.Input.asOptionalInput<String>(templateName),
      templateSql = pulumi.Input.asOptionalInput<String>(templateSql);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleQuery': ?simpleQuery,
      'templateName': ?templateName,
      'templateSql': ?templateSql,
    };
  }

  factory AdvancedQueryTemplateState.fromMap(Map<String, dynamic> map) {
    return AdvancedQueryTemplateState(
      simpleQuery: map['simpleQuery'] == null ? null : pulumi.Output.create<bool>(map['simpleQuery'] as bool),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
      templateSql: map['templateSql'] == null ? null : pulumi.Output.create<String>(map['templateSql'] as String),
    );
  }
}

