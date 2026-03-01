// ignore_for_file: unused_element, unnecessary_cast

class AiEndpointIamBindingCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [AiEndpointIamBindingCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  AiEndpointIamBindingCondition({
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

  factory AiEndpointIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamBindingCondition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
