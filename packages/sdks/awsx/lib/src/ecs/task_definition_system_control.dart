// ignore_for_file: unused_element, unnecessary_cast


class TaskDefinitionSystemControl {
  final String? namespace;
  final String? value;

  /// Creates a new [TaskDefinitionSystemControl].
  /// [namespace] Optional.
  /// [value] Optional.
  TaskDefinitionSystemControl({
    this.namespace,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
      'value': ?value,
    };
  }

  factory TaskDefinitionSystemControl.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionSystemControl(
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

