// ignore_for_file: unused_element, unnecessary_cast


class PipelineDefinitionParameterValue {
  /// ID of the parameter value.
  final String id;
  /// Field value, expressed as a String.
  final String stringValue;

  /// Creates a new [PipelineDefinitionParameterValue].
  /// [id] ID of the parameter value.
  /// [stringValue] Field value, expressed as a String.
  PipelineDefinitionParameterValue({
    required this.id,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'stringValue': stringValue,
    };
  }

  factory PipelineDefinitionParameterValue.fromMap(Map<String, dynamic> map) {
    return PipelineDefinitionParameterValue(
      id: map['id'] as String,
      stringValue: map['stringValue'] as String,
    );
  }
}

