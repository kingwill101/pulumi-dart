// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionKernelCapabilities {
  final List<String>? add;
  final List<String>? drop;

  TaskDefinitionKernelCapabilities({
    this.add,
    this.drop,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addValue = add;
    if (addValue != null) {
      map['add'] = addValue;
    }
    final dropValue = drop;
    if (dropValue != null) {
      map['drop'] = dropValue;
    }
    return map;
  }

  factory TaskDefinitionKernelCapabilities.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionKernelCapabilities(
      add: map['add'] == null ? null : (map['add'] as List).cast<String>(),
      drop: map['drop'] == null ? null : (map['drop'] as List).cast<String>(),
    );
  }
}
