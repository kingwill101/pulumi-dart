// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionSystemControl {
  final String? namespace;
  final String? value;

  TaskDefinitionSystemControl({
    this.namespace,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory TaskDefinitionSystemControl.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionSystemControl(
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
