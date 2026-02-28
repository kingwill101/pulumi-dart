// ignore_for_file: unused_element, unnecessary_cast

class Datapolicyv2DataPolicyIamBindingCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [Datapolicyv2DataPolicyIamBindingCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  Datapolicyv2DataPolicyIamBindingCondition({
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

  factory Datapolicyv2DataPolicyIamBindingCondition.fromMap(
      Map<String, dynamic> map) {
    return Datapolicyv2DataPolicyIamBindingCondition(
      description:
          map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
