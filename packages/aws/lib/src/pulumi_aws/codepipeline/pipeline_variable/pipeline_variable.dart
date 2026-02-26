// ignore_for_file: unused_element, unnecessary_cast

class PipelineVariable {
  /// The default value of a pipeline-level variable.
  final String? defaultValue;

  /// The description of a pipeline-level variable.
  final String? description;

  /// The name of a pipeline-level variable.
  final String name;

  PipelineVariable({
    this.defaultValue,
    this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['name'] = name;
    return map;
  }

  factory PipelineVariable.fromMap(Map<String, dynamic> map) {
    return PipelineVariable(
      defaultValue:
          map['defaultValue'] == null ? null : map['defaultValue'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
    );
  }
}
