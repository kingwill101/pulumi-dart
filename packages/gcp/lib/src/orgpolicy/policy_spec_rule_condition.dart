// ignore_for_file: unused_element, unnecessary_cast

class PolicySpecRuleCondition {
  /// Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  final String? description;

  /// Textual representation of an expression in Common Expression Language syntax.
  final String? expression;

  /// Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
  final String? location;

  /// Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
  final String? title;

  /// Creates a new [PolicySpecRuleCondition].
  /// [description] Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [location] Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
  /// [title] Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
  PolicySpecRuleCondition({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': ?expression,
      'location': ?location,
      'title': ?title,
    };
  }

  factory PolicySpecRuleCondition.fromMap(Map<String, dynamic> map) {
    return PolicySpecRuleCondition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] == null
          ? null
          : map['expression'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
