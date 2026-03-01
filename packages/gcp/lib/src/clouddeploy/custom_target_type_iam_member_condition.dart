// ignore_for_file: unused_element, unnecessary_cast

class CustomTargetTypeIamMemberCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [CustomTargetTypeIamMemberCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  CustomTargetTypeIamMemberCondition({
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

  factory CustomTargetTypeIamMemberCondition.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeIamMemberCondition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
