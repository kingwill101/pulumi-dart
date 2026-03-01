// ignore_for_file: unused_element, unnecessary_cast

class QueueIamMemberCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [QueueIamMemberCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  QueueIamMemberCondition({
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

  factory QueueIamMemberCondition.fromMap(Map<String, dynamic> map) {
    return QueueIamMemberCondition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
