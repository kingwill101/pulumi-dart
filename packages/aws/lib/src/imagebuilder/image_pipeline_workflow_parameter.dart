// ignore_for_file: unused_element, unnecessary_cast

class ImagePipelineWorkflowParameter {
  /// The name of the Workflow parameter.
  final String name;

  /// The value of the Workflow parameter.
  final String value;

  /// Creates a new [ImagePipelineWorkflowParameter].
  /// [name] The name of the Workflow parameter.
  /// [value] The value of the Workflow parameter.
  ImagePipelineWorkflowParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ImagePipelineWorkflowParameter.fromMap(Map<String, dynamic> map) {
    return ImagePipelineWorkflowParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
