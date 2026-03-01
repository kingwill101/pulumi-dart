// ignore_for_file: unused_element, unnecessary_cast

class AccountIamMemberCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [AccountIamMemberCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  AccountIamMemberCondition({
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

  factory AccountIamMemberCondition.fromMap(Map<String, dynamic> map) {
    return AccountIamMemberCondition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
