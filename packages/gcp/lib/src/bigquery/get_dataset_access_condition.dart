// ignore_for_file: unused_element, unnecessary_cast


class GetDatasetAccessCondition {
  /// Description of the expression. This is a longer text which describes the expression,
  /// e.g. when hovered over it in a UI.
  final String description;
  /// Textual representation of an expression in Common Expression Language syntax.
  final String expression;
  /// String indicating the location of the expression for error reporting, e.g. a file
  /// name and a position in the file.
  final String location;
  /// Title for the expression, i.e. a short string describing its purpose.
  /// This can be used e.g. in UIs which allow to enter the expression.
  final String title;

  /// Creates a new [GetDatasetAccessCondition].
  /// [description] Description of the expression. This is a longer text which describes the expression,
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [location] String indicating the location of the expression for error reporting, e.g. a file
  /// [title] Title for the expression, i.e. a short string describing its purpose.
  GetDatasetAccessCondition({
    required this.description,
    required this.expression,
    required this.location,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'expression': expression,
      'location': location,
      'title': title,
    };
  }

  factory GetDatasetAccessCondition.fromMap(Map<String, dynamic> map) {
    return GetDatasetAccessCondition(
      description: map['description'] as String,
      expression: map['expression'] as String,
      location: map['location'] as String,
      title: map['title'] as String,
    );
  }
}

