// ignore_for_file: unused_element, unnecessary_cast

class ImageWorkflowParameter {
  /// The name of the Workflow parameter.
  final String name;

  /// The value of the Workflow parameter.
  final String value;

  ImageWorkflowParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ImageWorkflowParameter.fromMap(Map<String, dynamic> map) {
    return ImageWorkflowParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
