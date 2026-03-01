// ignore_for_file: unused_element, unnecessary_cast

/// Schema in Thrift format.
class GoogleCloudDatacatalogV1PhysicalSchemaThriftSchemaResponse {
  /// Thrift IDL source of the schema.
  final String text;

  /// Creates a new [GoogleCloudDatacatalogV1PhysicalSchemaThriftSchemaResponse].
  /// [text] Thrift IDL source of the schema.
  GoogleCloudDatacatalogV1PhysicalSchemaThriftSchemaResponse({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': text};
  }

  factory GoogleCloudDatacatalogV1PhysicalSchemaThriftSchemaResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1PhysicalSchemaThriftSchemaResponse(
      text: map['text'] as String,
    );
  }
}
