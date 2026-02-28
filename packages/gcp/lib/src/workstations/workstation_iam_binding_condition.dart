// ignore_for_file: unused_element, unnecessary_cast

class WorkstationIamBindingCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [WorkstationIamBindingCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  WorkstationIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['expression'] = expression;
    map['title'] = title;
    return map;
  }

  factory WorkstationIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return WorkstationIamBindingCondition(
      description:
          map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
