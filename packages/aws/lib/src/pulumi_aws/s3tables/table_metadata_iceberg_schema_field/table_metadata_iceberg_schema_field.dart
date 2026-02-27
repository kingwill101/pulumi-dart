// ignore_for_file: unused_element, unnecessary_cast

class TableMetadataIcebergSchemaField {
  /// The name of the field.
  final String name;

  /// A Boolean value that specifies whether values are required for each row in this field. Defaults to `false`.
  final bool? required;

  /// The field type. S3 Tables supports all Apache Iceberg primitive types including: `boolean`, `int`, `long`, `float`, `double`, `decimal(precision,scale)`, `date`, `time`, `timestamp`, `timestamptz`, `string`, `uuid`, `fixed(length)`, `binary`.
  final String type;

  TableMetadataIcebergSchemaField({
    required this.name,
    this.required,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final requiredValue = required;
    if (requiredValue != null) {
      map['required'] = requiredValue;
    }
    map['type'] = type;
    return map;
  }

  factory TableMetadataIcebergSchemaField.fromMap(Map<String, dynamic> map) {
    return TableMetadataIcebergSchemaField(
      name: map['name'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
      type: map['type'] as String,
    );
  }
}
