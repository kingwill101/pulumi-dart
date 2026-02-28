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
  WorkflowTemplateParameterValidation({
    this.regex,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue.toMap();
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue.toMap();
    }
    return map;
  }

  factory WorkflowTemplateParameterValidation.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplateParameterValidation(
      regex: map['regex'] == null
          ? null
          : WorkflowTemplateParameterValidationRegex.fromMap(
              (map['regex'] as Map).cast<String, dynamic>()),
      values: map['values'] == null
          ? null
          : WorkflowTemplateParameterValidationValues.fromMap(
              (map['values'] as Map).cast<String, dynamic>()),
    );
  }
}
