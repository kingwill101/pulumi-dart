// ignore_for_file: unused_element, unnecessary_cast

class ImageWorkflowParameter {
  /// The name of the Workflow parameter.
  final String name;

  /// The value of the Workflow parameter.
  final String value;

  /// Creates a new [ImageWorkflowParameter].
  /// [name] The name of the Workflow parameter.
  /// [value] The value of the Workflow parameter.
  ImageWorkflowParameter({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory ImageWorkflowParameter.fromMap(Map<String, dynamic> map) {
    return ImageWorkflowParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
