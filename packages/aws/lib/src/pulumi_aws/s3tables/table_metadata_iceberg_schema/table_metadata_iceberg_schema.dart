// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_metadata_iceberg_schema_field/table_metadata_iceberg_schema_field.dart';

class TableMetadataIcebergSchema {
  /// List of schema fields for the Iceberg table. Each field defines a column in the table schema.
  /// See `field` below.
  final List<TableMetadataIcebergSchemaField> fields;

  TableMetadataIcebergSchema({
    required this.fields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fields'] = pulumi.Input.encodeList<TableMetadataIcebergSchemaField,
        Map<String, dynamic>>(fields, (value) => value.toMap());
    return map;
  }

  factory TableMetadataIcebergSchema.fromMap(Map<String, dynamic> map) {
    return TableMetadataIcebergSchema(
      fields: pulumi.Input.decodeList<TableMetadataIcebergSchemaField>(
          map['fields'],
          (value) => TableMetadataIcebergSchemaField.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
