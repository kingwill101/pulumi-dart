// ignore_for_file: unused_element, unnecessary_cast

class EntryGroupIamBindingCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [EntryGroupIamBindingCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  EntryGroupIamBindingCondition({
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

  factory EntryGroupIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return EntryGroupIamBindingCondition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
