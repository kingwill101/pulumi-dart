// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleTargetSagemakerPipelineParametersPipelineParameter {
  /// Name of parameter to start execution of a SageMaker AI Model Building Pipeline.
  final pulumi.Input<String> name;

  /// Value of parameter to start execution of a SageMaker AI Model Building Pipeline.
  final pulumi.Input<String> value;

  /// Creates a new [ScheduleTargetSagemakerPipelineParametersPipelineParameter].
  /// [name] Name of parameter to start execution of a SageMaker AI Model Building Pipeline.
  /// [value] Value of parameter to start execution of a SageMaker AI Model Building Pipeline.
  ScheduleTargetSagemakerPipelineParametersPipelineParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory ScheduleTargetSagemakerPipelineParametersPipelineParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScheduleTargetSagemakerPipelineParametersPipelineParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
