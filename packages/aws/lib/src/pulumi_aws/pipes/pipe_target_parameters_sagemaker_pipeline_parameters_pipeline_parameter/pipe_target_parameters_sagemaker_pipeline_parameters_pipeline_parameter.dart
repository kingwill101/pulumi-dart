// ignore_for_file: unused_element, unnecessary_cast

class PipeTargetParametersSagemakerPipelineParametersPipelineParameter {
  /// Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final String name;

  /// Value of parameter to start execution of a SageMaker AI Model Building Pipeline. Maximum length of 1024.
  final String value;

  PipeTargetParametersSagemakerPipelineParametersPipelineParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory PipeTargetParametersSagemakerPipelineParametersPipelineParameter.fromMap(
      Map<String, dynamic> map) {
    return PipeTargetParametersSagemakerPipelineParametersPipelineParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
