// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionFirelensConfiguration {
  final dynamic options;
  final String? type;

  /// Creates a new [TaskDefinitionFirelensConfiguration].
  /// [options] Optional.
  /// [type] Optional.
  TaskDefinitionFirelensConfiguration({this.options, this.type});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory TaskDefinitionFirelensConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return TaskDefinitionFirelensConfiguration(
      options: map['options'] == null ? null : map['options'],
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
