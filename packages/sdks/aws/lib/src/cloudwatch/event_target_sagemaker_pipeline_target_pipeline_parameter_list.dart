// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventTargetSagemakerPipelineTargetPipelineParameterList {
  /// Name of parameter to start execution of a SageMaker AI Model Building Pipeline.
  final pulumi.Input<String> name;
  /// Value of parameter to start execution of a SageMaker AI Model Building Pipeline.
  final pulumi.Input<String> value;

  /// Creates a new [EventTargetSagemakerPipelineTargetPipelineParameterList].
  /// [name] Name of parameter to start execution of a SageMaker AI Model Building Pipeline.
  /// [value] Value of parameter to start execution of a SageMaker AI Model Building Pipeline.
  const EventTargetSagemakerPipelineTargetPipelineParameterList({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory EventTargetSagemakerPipelineTargetPipelineParameterList.fromMap(Map<String, dynamic> map) {
    return EventTargetSagemakerPipelineTargetPipelineParameterList(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

