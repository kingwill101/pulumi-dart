// ignore_for_file: unused_element, unnecessary_cast


class RegionDiskIamBindingCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [RegionDiskIamBindingCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  RegionDiskIamBindingCondition({
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

  factory RegionDiskIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return RegionDiskIamBindingCondition(
      description: map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}

