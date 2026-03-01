// ignore_for_file: unused_element, unnecessary_cast

class Datapolicyv2DataPolicyIamMemberCondition {
  final String? description;
  final String expression;
  final String title;

  /// Creates a new [Datapolicyv2DataPolicyIamMemberCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  Datapolicyv2DataPolicyIamMemberCondition({
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

  factory Datapolicyv2DataPolicyIamMemberCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return Datapolicyv2DataPolicyIamMemberCondition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
