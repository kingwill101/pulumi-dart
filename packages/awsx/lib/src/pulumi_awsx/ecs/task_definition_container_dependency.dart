// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionContainerDependency {
  final String? condition;
  final String? containerName;

  TaskDefinitionContainerDependency({
    this.condition,
    this.containerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue;
    }
    final containerNameValue = containerName;
    if (containerNameValue != null) {
      map['containerName'] = containerNameValue;
    }
    return map;
  }

  factory TaskDefinitionContainerDependency.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionContainerDependency(
      condition: map['condition'] == null ? null : map['condition'] as String,
      containerName:
          map['containerName'] == null ? null : map['containerName'] as String,
    );
  }
}
