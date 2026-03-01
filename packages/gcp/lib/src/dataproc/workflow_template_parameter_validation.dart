// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_template_parameter_validation_regex.dart';
import 'workflow_template_parameter_validation_values.dart';

class WorkflowTemplateParameterValidation {
  /// Validation based on regular expressions.
  final WorkflowTemplateParameterValidationRegex? regex;

  /// Validation based on a list of allowed values.
  final WorkflowTemplateParameterValidationValues? values;

  /// Creates a new [WorkflowTemplateParameterValidation].
  /// [regex] Validation based on regular expressions.
  /// [values] Validation based on a list of allowed values.
  WorkflowTemplateParameterValidation({this.regex, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': ?regex == null ? null : regex!.toMap(),
      'values': ?values == null ? null : values!.toMap(),
    };
  }

  factory WorkflowTemplateParameterValidation.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkflowTemplateParameterValidation(
      regex: map['regex'] == null
          ? null
          : WorkflowTemplateParameterValidationRegex.fromMap(
              (map['regex'] as Map).cast<String, dynamic>(),
            ),
      values: map['values'] == null
          ? null
          : WorkflowTemplateParameterValidationValues.fromMap(
              (map['values'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
