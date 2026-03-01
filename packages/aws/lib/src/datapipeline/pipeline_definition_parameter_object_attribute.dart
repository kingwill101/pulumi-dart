// ignore_for_file: unused_element, unnecessary_cast


class PipelineDefinitionParameterObjectAttribute {
  /// Field identifier.
  final String key;
  /// Field value, expressed as a String.
  final String stringValue;

  /// Creates a new [PipelineDefinitionParameterObjectAttribute].
  /// [key] Field identifier.
  /// [stringValue] Field value, expressed as a String.
  PipelineDefinitionParameterObjectAttribute({
    required this.key,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'stringValue': stringValue,
    };
  }

  factory PipelineDefinitionParameterObjectAttribute.fromMap(Map<String, dynamic> map) {
    return PipelineDefinitionParameterObjectAttribute(
      key: map['key'] as String,
      stringValue: map['stringValue'] as String,
    );
  }
}

