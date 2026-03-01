// ignore_for_file: unused_element, unnecessary_cast


class TaskDefinitionSecret {
  final String name;
  final String valueFrom;

  /// Creates a new [TaskDefinitionSecret].
  /// [name] Required.
  /// [valueFrom] Required.
  TaskDefinitionSecret({
    required this.name,
    required this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'valueFrom': valueFrom,
    };
  }

  factory TaskDefinitionSecret.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionSecret(
      name: map['name'] as String,
      valueFrom: map['valueFrom'] as String,
    );
  }
}

