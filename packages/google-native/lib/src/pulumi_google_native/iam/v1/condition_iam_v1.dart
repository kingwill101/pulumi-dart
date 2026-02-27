// ignore_for_file: unused_element, unnecessary_cast

/// An IAM Condition for a given binding. See https://cloud.google.com/iam/docs/conditions-overview for additional details.
class ConditionIamV1 {
  /// An optional description of the expression. This is a longer text which describes the expression, e.g., when hovering over it in a UI.
  final String? description;

  /// Textual representation of an expression in Common Expression Language syntax.
  final String expression;

  /// A title for the expression, i.e. a short string describing its purpose.
  final String title;

  ConditionIamV1({
    this.description,
    required this.expression,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['expression'] = expression;
    map['title'] = title;
    return map;
  }

  factory ConditionIamV1.fromMap(Map<String, dynamic> map) {
    return ConditionIamV1(
      description:
          map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
