// ignore_for_file: unused_element, unnecessary_cast

class SourceIamMemberCondition {
  /// The description of the source (max of 1024 characters).
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [SourceIamMemberCondition].
  /// [description] The description of the source (max of 1024 characters).
  /// [expression] Required.
  /// [title] Required.
  SourceIamMemberCondition({
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

  factory SourceIamMemberCondition.fromMap(Map<String, dynamic> map) {
    return SourceIamMemberCondition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
