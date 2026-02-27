// ignore_for_file: unused_element, unnecessary_cast

class FunctionIamBindingConditionCloudfunctionsv2 {
  final String? description;
  final String expression;
  final String title;

  FunctionIamBindingConditionCloudfunctionsv2({
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

  factory FunctionIamBindingConditionCloudfunctionsv2.fromMap(
      Map<String, dynamic> map) {
    return FunctionIamBindingConditionCloudfunctionsv2(
      description:
          map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
