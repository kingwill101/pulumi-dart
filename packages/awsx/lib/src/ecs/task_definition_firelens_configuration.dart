// ignore_for_file: unused_element, unnecessary_cast


class TaskDefinitionFirelensConfiguration {
  final dynamic options;
  final String? type;

  /// Creates a new [TaskDefinitionFirelensConfiguration].
  /// [options] Optional.
  /// [type] Optional.
  TaskDefinitionFirelensConfiguration({
    this.options,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': ?options,
      'type': ?type,
    };
  }

  factory TaskDefinitionFirelensConfiguration.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionFirelensConfiguration(
      options: map['options'] == null ? null : map['options'],
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

