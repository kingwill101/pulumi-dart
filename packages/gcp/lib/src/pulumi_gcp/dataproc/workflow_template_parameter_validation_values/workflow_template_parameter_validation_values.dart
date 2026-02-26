// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplateParameterValidationValues {
  /// Required. List of allowed values for the parameter.
  final List<String> values;

  WorkflowTemplateParameterValidationValues({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory WorkflowTemplateParameterValidationValues.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplateParameterValidationValues(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
