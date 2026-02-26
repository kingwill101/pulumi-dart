// ignore_for_file: unused_element, unnecessary_cast

class PipelineDefinitionPipelineObjectField {
  /// Field identifier.
  final String key;

  /// Field value, expressed as the identifier of another object
  final String? refValue;

  /// Field value, expressed as a String.
  final String? stringValue;

  PipelineDefinitionPipelineObjectField({
    required this.key,
    this.refValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final refValueValue = refValue;
    if (refValueValue != null) {
      map['refValue'] = refValueValue;
    }
    final stringValueValue = stringValue;
    if (stringValueValue != null) {
      map['stringValue'] = stringValueValue;
    }
    return map;
  }

  factory PipelineDefinitionPipelineObjectField.fromMap(
      Map<String, dynamic> map) {
    return PipelineDefinitionPipelineObjectField(
      key: map['key'] as String,
      refValue: map['refValue'] == null ? null : map['refValue'] as String,
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}
