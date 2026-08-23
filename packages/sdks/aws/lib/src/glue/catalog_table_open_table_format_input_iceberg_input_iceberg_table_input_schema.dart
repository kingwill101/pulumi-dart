// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_open_table_format_input_iceberg_input_iceberg_table_input_schema_field.dart';

class CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchema {
  /// List of field definitions that make up the table schema. See `schema.fields` below.
  final pulumi.Input<List<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaField>> fields;
  /// List of field identifiers that uniquely identify records in the table, used for row-level operations and deduplication.
  final pulumi.Input<List<int>>? identifierFieldIds;
  /// Unique identifier for this schema version within the Iceberg table's schema evolution history.
  final pulumi.Input<int>? schemaId;
  /// Data type definition for this field as a JSON string, specifying the structure and format of the data it contains. Examples: `"long"`, `"string"`, `"timestamp"`, `"decimal(10,2)"`.
  final pulumi.Input<String>? type;

  /// Creates a new [CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchema].
  /// [fields] List of field definitions that make up the table schema. See `schema.fields` below.
  /// [identifierFieldIds] List of field identifiers that uniquely identify records in the table, used for row-level operations and deduplication.
  /// [schemaId] Unique identifier for this schema version within the Iceberg table's schema evolution history.
  /// [type] Data type definition for this field as a JSON string, specifying the structure and format of the data it contains. Examples: `"long"`, `"string"`, `"timestamp"`, `"decimal(10,2)"`.
  const CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchema({
    required this.fields,
    this.identifierFieldIds,
    this.schemaId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identifierFieldIds': ?identifierFieldIds,
      'schemaId': ?schemaId,
      'type': ?type,
    };
  }

  factory CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchema.fromMap(Map<String, dynamic> map) {
    return CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchema(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaField>(map['fields']!, (value) => CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaField.fromMap((value as Map).cast<String, dynamic>()))),
      identifierFieldIds: (() { final guardedValue = map['identifierFieldIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
