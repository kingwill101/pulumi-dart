// ignore_for_file: unused_element, unnecessary_cast

/// Schema in Thrift format.
class GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema {
  /// Thrift IDL source of the schema.
  final String? text;

  GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema({
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

  factory GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema(
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
