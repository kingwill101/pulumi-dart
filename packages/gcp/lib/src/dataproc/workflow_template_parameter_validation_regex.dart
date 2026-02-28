// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplateParameterValidationRegex {
  /// Required. RE2 regular expressions used to validate the parameter's value. The value must match the regex in its entirety (substring matches are not sufficient).
  final List<String> regexes;

  /// Creates a new [WorkflowTemplateParameterValidationRegex].
  /// [regexes] Required. RE2 regular expressions used to validate the parameter's value. The value must match the regex in its entirety (substring matches are not sufficient).
  WorkflowTemplateParameterValidationRegex({
    required this.regexes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regexes'] = regexes;
    return map;
  }

  factory WorkflowTemplateParameterValidationRegex.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplateParameterValidationRegex(
      regexes: (map['regexes'] as List).cast<String>(),
    );
  }
}
