// ignore_for_file: unused_element, unnecessary_cast

class ConsumersIamBindingCondition {
  final String? description;
  final String expression;
  final String title;

  ConsumersIamBindingCondition({
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

  factory ConsumersIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return ConsumersIamBindingCondition(
      description:
          map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
