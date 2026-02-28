// ignore_for_file: unused_element, unnecessary_cast


class ManagedFolderIamBindingCondition {
  final String? description;
  /// Textual representation of an expression in Common Expression Language syntax.
  final String expression;
  /// A title for the expression, i.e. a short string describing its purpose.
  final String title;

  /// Creates a new [ManagedFolderIamBindingCondition].
  /// [description] Optional.
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [title] A title for the expression, i.e. a short string describing its purpose.
  ManagedFolderIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': expression,
      'title': title,
    };
  }

  factory ManagedFolderIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return ManagedFolderIamBindingCondition(
      description: map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}

