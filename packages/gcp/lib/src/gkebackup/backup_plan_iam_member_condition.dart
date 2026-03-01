// ignore_for_file: unused_element, unnecessary_cast

class BackupPlanIamMemberCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [BackupPlanIamMemberCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  BackupPlanIamMemberCondition({
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

  factory BackupPlanIamMemberCondition.fromMap(Map<String, dynamic> map) {
    return BackupPlanIamMemberCondition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
