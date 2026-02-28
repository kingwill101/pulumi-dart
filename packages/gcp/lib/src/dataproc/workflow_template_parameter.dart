// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_template_parameter_validation.dart';

class WorkflowTemplateParameter {
  /// Brief description of the parameter. Must not exceed 1024 characters.
  final String? description;

  /// Required. Paths to all fields that the parameter replaces. A field is allowed to appear in at most one parameter's list of field paths. A field path is similar in syntax to a .sparkJob.args
  final List<String> fields;

  /// Required. Parameter name. The parameter name is used as the key, and paired with the parameter value, which are passed to the template when the template is instantiated. The name must contain only capital letters (A-Z), numbers (0-9), and underscores (_), and must not start with a number. The maximum length is 40 characters.
  final String name;

  /// Validation rules to be applied to this parameter's value.
  final WorkflowTemplateParameterValidation? validation;

  /// Creates a new [WorkflowTemplateParameter].
  /// [description] Brief description of the parameter. Must not exceed 1024 characters.
  /// [fields] Required. Paths to all fields that the parameter replaces. A field is allowed to appear in at most one parameter's list of field paths. A field path is similar in syntax to a .sparkJob.args
  /// [name] Required. Parameter name. The parameter name is used as the key, and paired with the parameter value, which are passed to the template when the template is instantiated. The name must contain only capital letters (A-Z), numbers (0-9), and underscores (_), and must not start with a number. The maximum length is 40 characters.
  /// [validation] Validation rules to be applied to this parameter's value.
  WorkflowTemplateParameter({
    this.description,
    required this.fields,
    required this.name,
    this.validation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['fields'] = fields;
    map['name'] = name;
    final validationValue = validation;
    if (validationValue != null) {
      map['validation'] = validationValue.toMap();
    }
    return map;
  }

  factory WorkflowTemplateParameter.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateParameter(
      description:
          map['description'] == null ? null : map['description'] as String,
      fields: (map['fields'] as List).cast<String>(),
      name: map['name'] as String,
      validation: map['validation'] == null
          ? null
          : WorkflowTemplateParameterValidation.fromMap(
              (map['validation'] as Map).cast<String, dynamic>()),
    );
  }
}
