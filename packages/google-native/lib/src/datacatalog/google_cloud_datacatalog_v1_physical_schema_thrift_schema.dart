// ignore_for_file: unused_element, unnecessary_cast

/// Schema in Thrift format.
class GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema {
  /// Thrift IDL source of the schema.
  final String? text;

  /// Creates a new [GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema].
  /// [text] Thrift IDL source of the schema.
  GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema({this.text});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': ?text};
  }

  factory GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema(
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
