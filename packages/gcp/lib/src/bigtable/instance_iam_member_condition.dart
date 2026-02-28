// ignore_for_file: unused_element, unnecessary_cast


class InstanceIamMemberCondition {
  /// An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  ///
  /// For `gcp.bigtable.InstanceIamPolicy` only:
  final String? description;
  /// Textual representation of an expression in Common Expression Language syntax.
  final String expression;
  /// A title for the expression, i.e. a short string describing its purpose.
  final String title;

  /// Creates a new [InstanceIamMemberCondition].
  /// [description] An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [title] A title for the expression, i.e. a short string describing its purpose.
  InstanceIamMemberCondition({
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

  factory InstanceIamMemberCondition.fromMap(Map<String, dynamic> map) {
    return InstanceIamMemberCondition(
      description: map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}

