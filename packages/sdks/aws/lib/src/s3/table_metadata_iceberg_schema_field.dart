// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableMetadataIcebergSchemaField {
  /// Name of the field.
  final pulumi.Input<String> name;
  /// Boolean value that specifies whether values are required for each row in this field. Defaults to `false`.
  final pulumi.Input<bool?>? required;
  /// Field type. S3 Tables supports all Apache Iceberg primitive types including: `boolean`, `int`, `long`, `float`, `double`, `decimal(precision,scale)`, `date`, `time`, `timestamp`, `timestamptz`, `string`, `uuid`, `fixed(length)`, `binary`.
  final pulumi.Input<String> type;

  /// Creates a new [TableMetadataIcebergSchemaField].
  /// [name] Name of the field.
  /// [required] Boolean value that specifies whether values are required for each row in this field. Defaults to `false`.
  /// [type] Field type. S3 Tables supports all Apache Iceberg primitive types including: `boolean`, `int`, `long`, `float`, `double`, `decimal(precision,scale)`, `date`, `time`, `timestamp`, `timestamptz`, `string`, `uuid`, `fixed(length)`, `binary`.
  const TableMetadataIcebergSchemaField({
    required this.name,
    this.required,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'required': ?required,
      'type': type,
    };
  }

  factory TableMetadataIcebergSchemaField.fromMap(Map<String, dynamic> map) {
    return TableMetadataIcebergSchemaField(
      name: pulumi.Input.fromValue(map['name'] as String),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
