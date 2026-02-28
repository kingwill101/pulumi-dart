// ignore_for_file: unused_element, unnecessary_cast

class DicomStoreIamBindingCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [DicomStoreIamBindingCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  DicomStoreIamBindingCondition({
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

  factory DicomStoreIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return DicomStoreIamBindingCondition(
      description:
          map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
