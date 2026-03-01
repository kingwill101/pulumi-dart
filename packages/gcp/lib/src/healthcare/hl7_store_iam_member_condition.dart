// ignore_for_file: unused_element, unnecessary_cast


class Hl7StoreIamMemberCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [Hl7StoreIamMemberCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  Hl7StoreIamMemberCondition({
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

  factory Hl7StoreIamMemberCondition.fromMap(Map<String, dynamic> map) {
    return Hl7StoreIamMemberCondition(
      description: map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}

