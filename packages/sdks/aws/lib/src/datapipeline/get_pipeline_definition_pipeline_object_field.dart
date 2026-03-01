// ignore_for_file: unused_element, unnecessary_cast


class GetPipelineDefinitionPipelineObjectField {
  /// Field identifier.
  final String key;
  /// Field value, expressed as the identifier of another object
  final String refValue;
  /// Field value, expressed as a String.
  final String stringValue;

  /// Creates a new [GetPipelineDefinitionPipelineObjectField].
  /// [key] Field identifier.
  /// [refValue] Field value, expressed as the identifier of another object
  /// [stringValue] Field value, expressed as a String.
  GetPipelineDefinitionPipelineObjectField({
    required this.key,
    required this.refValue,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'refValue': refValue,
      'stringValue': stringValue,
    };
  }

  factory GetPipelineDefinitionPipelineObjectField.fromMap(Map<String, dynamic> map) {
    return GetPipelineDefinitionPipelineObjectField(
      key: map['key'] as String,
      refValue: map['refValue'] as String,
      stringValue: map['stringValue'] as String,
    );
  }
}

