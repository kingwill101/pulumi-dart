// ignore_for_file: unused_element, unnecessary_cast

class GetPipelineDefinitionParameterValue {
  /// ID of the object.
  final String id;

  /// Field value, expressed as a String.
  final String stringValue;

  /// Creates a new [GetPipelineDefinitionParameterValue].
  /// [id] ID of the object.
  /// [stringValue] Field value, expressed as a String.
  GetPipelineDefinitionParameterValue({
    required this.id,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'stringValue': stringValue};
  }

  factory GetPipelineDefinitionParameterValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPipelineDefinitionParameterValue(
      id: map['id'] as String,
      stringValue: map['stringValue'] as String,
    );
  }
}
