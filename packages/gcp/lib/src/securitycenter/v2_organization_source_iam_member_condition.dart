// ignore_for_file: unused_element, unnecessary_cast

class V2OrganizationSourceIamMemberCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [V2OrganizationSourceIamMemberCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  V2OrganizationSourceIamMemberCondition({
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

  factory V2OrganizationSourceIamMemberCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2OrganizationSourceIamMemberCondition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
