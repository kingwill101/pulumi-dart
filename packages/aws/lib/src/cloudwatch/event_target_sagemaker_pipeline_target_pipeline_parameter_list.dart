// ignore_for_file: unused_element, unnecessary_cast

class EventTargetSagemakerPipelineTargetPipelineParameterList {
  /// Name of parameter to start execution of a SageMaker AI Model Building Pipeline.
  final String name;

  /// Value of parameter to start execution of a SageMaker AI Model Building Pipeline.
  final String value;

  /// Creates a new [EventTargetSagemakerPipelineTargetPipelineParameterList].
  /// [name] Name of parameter to start execution of a SageMaker AI Model Building Pipeline.
  /// [value] Value of parameter to start execution of a SageMaker AI Model Building Pipeline.
  EventTargetSagemakerPipelineTargetPipelineParameterList({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory EventTargetSagemakerPipelineTargetPipelineParameterList.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventTargetSagemakerPipelineTargetPipelineParameterList(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
