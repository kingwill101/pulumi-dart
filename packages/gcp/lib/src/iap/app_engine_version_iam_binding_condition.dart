// ignore_for_file: unused_element, unnecessary_cast

class AppEngineVersionIamBindingCondition {
  /// An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  ///
  /// > **Warning:** The provider considers the `role` and condition contents (`title`+`description`+`expression`) as the
  /// identifier for the binding. This means that if any part of the condition is changed out-of-band, the provider will
  /// consider it to be an entirely different resource and will treat it as such.
  final String? description;

  /// Textual representation of an expression in Common Expression Language syntax.
  final String expression;

  /// A title for the expression, i.e. a short string describing its purpose.
  final String title;

  /// Creates a new [AppEngineVersionIamBindingCondition].
  /// [description] An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [title] A title for the expression, i.e. a short string describing its purpose.
  AppEngineVersionIamBindingCondition({
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

  factory AppEngineVersionIamBindingCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppEngineVersionIamBindingCondition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
