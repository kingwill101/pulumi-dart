// ignore_for_file: unused_element, unnecessary_cast

class PipelineInputPayloadFormatProtobuf {
  /// The entire schema definition is stored in this field.
  final String? schemaDefinition;

  PipelineInputPayloadFormatProtobuf({
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

  factory PipelineInputPayloadFormatProtobuf.fromMap(Map<String, dynamic> map) {
    return PipelineInputPayloadFormatProtobuf(
      schemaDefinition: map['schemaDefinition'] == null
          ? null
          : map['schemaDefinition'] as String,
    );
  }
}
