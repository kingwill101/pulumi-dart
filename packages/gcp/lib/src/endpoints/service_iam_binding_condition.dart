// ignore_for_file: unused_element, unnecessary_cast


class ServiceIamBindingCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [ServiceIamBindingCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  ServiceIamBindingCondition({
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

  factory ServiceIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return ServiceIamBindingCondition(
      description: map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}

