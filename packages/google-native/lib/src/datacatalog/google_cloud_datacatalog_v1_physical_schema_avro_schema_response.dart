// ignore_for_file: unused_element, unnecessary_cast

/// Schema in Avro JSON format.
class GoogleCloudDatacatalogV1PhysicalSchemaAvroSchemaResponse {
  /// JSON source of the Avro schema.
  final String text;

  /// Creates a new [GoogleCloudDatacatalogV1PhysicalSchemaAvroSchemaResponse].
  /// [text] JSON source of the Avro schema.
  GoogleCloudDatacatalogV1PhysicalSchemaAvroSchemaResponse({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': text};
  }

  factory GoogleCloudDatacatalogV1PhysicalSchemaAvroSchemaResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1PhysicalSchemaAvroSchemaResponse(
      text: map['text'] as String,
    );
  }
}
