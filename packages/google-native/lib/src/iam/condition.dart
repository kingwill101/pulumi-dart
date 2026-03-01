// ignore_for_file: unused_element, unnecessary_cast

/// An IAM Condition for a given binding. See https://cloud.google.com/iam/docs/conditions-overview for additional details.
class Condition {
  /// An optional description of the expression. This is a longer text which describes the expression, e.g., when hovering over it in a UI.
  final String? description;

  /// Textual representation of an expression in Common Expression Language syntax.
  final String expression;

  /// A title for the expression, i.e. a short string describing its purpose.
  final String title;

  /// Creates a new [Condition].
  /// [description] An optional description of the expression. This is a longer text which describes the expression, e.g., when hovering over it in a UI.
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [title] A title for the expression, i.e. a short string describing its purpose.
  Condition({this.description, required this.expression, required this.title});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': expression,
      'title': title,
    };
  }

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
