// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageWorkflowParameter {
  /// The name of the Workflow parameter.
  final pulumi.Input<String> name;
  /// The value of the Workflow parameter.
  final pulumi.Input<String> value;

  /// Creates a new [ImageWorkflowParameter].
  /// [name] The name of the Workflow parameter.
  /// [value] The value of the Workflow parameter.
  const ImageWorkflowParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ImageWorkflowParameter.fromMap(Map<String, dynamic> map) {
    return ImageWorkflowParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

