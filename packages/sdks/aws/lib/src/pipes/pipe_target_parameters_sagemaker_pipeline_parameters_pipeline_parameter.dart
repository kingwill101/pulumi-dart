// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersSagemakerPipelineParametersPipelineParameter {
  /// Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  final pulumi.Input<String> name;
  /// Value of parameter to start execution of a SageMaker AI Model Building Pipeline. Maximum length of 1024.
  final pulumi.Input<String> value;

  /// Creates a new [PipeTargetParametersSagemakerPipelineParametersPipelineParameter].
  /// [name] Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  /// [value] Value of parameter to start execution of a SageMaker AI Model Building Pipeline. Maximum length of 1024.
  const PipeTargetParametersSagemakerPipelineParametersPipelineParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory PipeTargetParametersSagemakerPipelineParametersPipelineParameter.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersSagemakerPipelineParametersPipelineParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
