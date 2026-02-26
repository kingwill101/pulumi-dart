// ignore_for_file: unused_element, unnecessary_cast

class GetPipelineDefinitionParameterValue {
  /// ID of the object.
  final String id;

  /// Field value, expressed as a String.
  final String stringValue;

  GetPipelineDefinitionParameterValue({
    required this.id,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['stringValue'] = stringValue;
    return map;
  }

  factory GetPipelineDefinitionParameterValue.fromMap(
      Map<String, dynamic> map) {
    return GetPipelineDefinitionParameterValue(
      id: map['id'] as String,
      stringValue: map['stringValue'] as String,
    );
  }
}
