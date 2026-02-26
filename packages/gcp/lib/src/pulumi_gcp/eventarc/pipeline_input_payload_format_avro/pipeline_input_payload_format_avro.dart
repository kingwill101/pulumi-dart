// ignore_for_file: unused_element, unnecessary_cast

class PipelineInputPayloadFormatAvro {
  /// The entire schema definition is stored in this field.
  final String? schemaDefinition;

  PipelineInputPayloadFormatAvro({
    this.schemaDefinition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final schemaDefinitionValue = schemaDefinition;
    if (schemaDefinitionValue != null) {
      map['schemaDefinition'] = schemaDefinitionValue;
    }
    return map;
  }

  factory PipelineInputPayloadFormatAvro.fromMap(Map<String, dynamic> map) {
    return PipelineInputPayloadFormatAvro(
      schemaDefinition: map['schemaDefinition'] == null
          ? null
          : map['schemaDefinition'] as String,
    );
  }
}
