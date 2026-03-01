// ignore_for_file: unused_element, unnecessary_cast

class TunnelIamMemberCondition {
  /// An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  final String? description;

  /// Textual representation of an expression in Common Expression Language syntax.
  final String expression;

  /// A title for the expression, i.e. a short string describing its purpose.
  final String title;

  /// Creates a new [TunnelIamMemberCondition].
  /// [description] An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [title] A title for the expression, i.e. a short string describing its purpose.
  TunnelIamMemberCondition({
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

  factory TunnelIamMemberCondition.fromMap(Map<String, dynamic> map) {
    return TunnelIamMemberCondition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
