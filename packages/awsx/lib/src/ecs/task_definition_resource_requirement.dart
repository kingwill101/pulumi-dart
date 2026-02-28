// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionResourceRequirement {
  final String type;
  final String value;

  /// Creates a new [TaskDefinitionResourceRequirement].
  /// [type] Required.
  /// [value] Required.
  TaskDefinitionResourceRequirement({required this.type, required this.value});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory TaskDefinitionResourceRequirement.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionResourceRequirement(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
