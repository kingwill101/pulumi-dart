// ignore_for_file: unused_element, unnecessary_cast


class ScopeIamBindingCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [ScopeIamBindingCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  ScopeIamBindingCondition({
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

  factory ScopeIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return ScopeIamBindingCondition(
      description: map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}

