// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_actiontrail_advanced_query_template_advanced_query_template_args_doc}
/// The set of arguments for AdvancedQueryTemplate.
/// {@endtemplate}
/// {@macro pulumi_actiontrail_advanced_query_template_advanced_query_template_args_doc}
class AdvancedQueryTemplateArgs {
  /// Distinguish whether the current template is a simple query
  final pulumi.Input<bool> simpleQuery;
  /// The name of the resource
  final pulumi.Input<String>? templateName;
  /// SQL content saved on behalf of the current template
  final pulumi.Input<String> templateSql;

  /// Creates a new [AdvancedQueryTemplateArgs].
  /// [simpleQuery] Distinguish whether the current template is a simple query
  /// [templateName] The name of the resource
  /// [templateSql] SQL content saved on behalf of the current template
  AdvancedQueryTemplateArgs({
    required this.simpleQuery,
    this.templateName,
    required this.templateSql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleQuery': simpleQuery,
      'templateName': ?templateName,
      'templateSql': templateSql,
    };
  }

  factory AdvancedQueryTemplateArgs.fromMap(Map<String, dynamic> map) {
    return AdvancedQueryTemplateArgs(
      simpleQuery: pulumi.Input.fromValue(map['simpleQuery'] as bool),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateSql: pulumi.Input.fromValue(map['templateSql'] as String),
    );
  }
}

