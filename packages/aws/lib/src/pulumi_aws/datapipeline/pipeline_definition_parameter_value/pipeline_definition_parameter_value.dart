// ignore_for_file: unused_element, unnecessary_cast

class PipelineDefinitionParameterValue {
  /// ID of the parameter value.
  final String id;

  /// Field value, expressed as a String.
  final String stringValue;

  PipelineDefinitionParameterValue({
    required this.id,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['stringValue'] = stringValue;
    return map;
  }

  factory PipelineDefinitionParameterValue.fromMap(Map<String, dynamic> map) {
    return PipelineDefinitionParameterValue(
      id: map['id'] as String,
      stringValue: map['stringValue'] as String,
    );
  }
}
