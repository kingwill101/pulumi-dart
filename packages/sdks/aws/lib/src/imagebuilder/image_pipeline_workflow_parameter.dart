// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImagePipelineWorkflowParameter {
  /// The name of the Workflow parameter.
  final pulumi.Input<String> name;
  /// The value of the Workflow parameter.
  final pulumi.Input<String> value;

  /// Creates a new [ImagePipelineWorkflowParameter].
  /// [name] The name of the Workflow parameter.
  /// [value] The value of the Workflow parameter.
  const ImagePipelineWorkflowParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ImagePipelineWorkflowParameter.fromMap(Map<String, dynamic> map) {
    return ImagePipelineWorkflowParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
