// ignore_for_file: unused_element, unnecessary_cast

/// Schema in Avro JSON format.
class GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema {
  /// JSON source of the Avro schema.
  final String? text;

  /// Creates a new [GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema].
  /// [text] JSON source of the Avro schema.
  GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema({
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema(
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
