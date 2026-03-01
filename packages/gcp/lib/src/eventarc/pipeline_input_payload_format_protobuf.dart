// ignore_for_file: unused_element, unnecessary_cast


class PipelineInputPayloadFormatProtobuf {
  /// The entire schema definition is stored in this field.
  final String? schemaDefinition;

  /// Creates a new [PipelineInputPayloadFormatProtobuf].
  /// [schemaDefinition] The entire schema definition is stored in this field.
  PipelineInputPayloadFormatProtobuf({
    this.schemaDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaDefinition': ?schemaDefinition,
    };
  }

  factory PipelineInputPayloadFormatProtobuf.fromMap(Map<String, dynamic> map) {
    return PipelineInputPayloadFormatProtobuf(
      schemaDefinition: map['schemaDefinition'] == null ? null : map['schemaDefinition'] as String,
    );
  }
}

