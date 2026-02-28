// ignore_for_file: unused_element, unnecessary_cast

/// Schema in protocol buffer format.
class GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema {
  /// Protocol buffer source of the schema.
  final String? text;

  /// Creates a new [GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema].
  /// [text] Protocol buffer source of the schema.
  GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema({
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

  factory GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema(
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
