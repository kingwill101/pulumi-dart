// ignore_for_file: unused_element, unnecessary_cast

class GetPipelineDefinitionParameterObjectAttribute {
  /// Field identifier.
  final String key;

  /// Field value, expressed as a String.
  final String stringValue;

  /// Creates a new [GetPipelineDefinitionParameterObjectAttribute].
  /// [key] Field identifier.
  /// [stringValue] Field value, expressed as a String.
  GetPipelineDefinitionParameterObjectAttribute({
    required this.key,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'stringValue': stringValue};
  }

  factory GetPipelineDefinitionParameterObjectAttribute.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPipelineDefinitionParameterObjectAttribute(
      key: map['key'] as String,
      stringValue: map['stringValue'] as String,
    );
  }
}
