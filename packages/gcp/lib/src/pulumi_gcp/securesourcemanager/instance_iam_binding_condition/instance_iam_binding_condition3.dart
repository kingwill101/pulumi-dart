// ignore_for_file: unused_element, unnecessary_cast

class InstanceIamBindingCondition3 {
  final String? description;
  final String expression;
  final String title;

  InstanceIamBindingCondition3({
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

  factory InstanceIamBindingCondition3.fromMap(Map<String, dynamic> map) {
    return InstanceIamBindingCondition3(
      description:
          map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
