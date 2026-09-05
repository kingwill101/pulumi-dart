// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_metadata_iceberg_schema.dart';

class TableMetadataIceberg {
  /// Map of configuration properties for the Iceberg table, for example `write.distribution-mode` and `write.sort-order`.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Schema configuration for the Iceberg table. See `schema` below.
  final pulumi.Input<TableMetadataIcebergSchema> schema;

  /// Creates a new [TableMetadataIceberg].
  /// [properties] Map of configuration properties for the Iceberg table, for example `write.distribution-mode` and `write.sort-order`.
  /// [schema] Schema configuration for the Iceberg table. See `schema` below.
  const TableMetadataIceberg({
    this.properties,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'schema': pulumi.Input.mapInputValue<TableMetadataIcebergSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
    };
  }

  factory TableMetadataIceberg.fromMap(Map<String, dynamic> map) {
    return TableMetadataIceberg(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      schema: pulumi.Input.fromValue(TableMetadataIcebergSchema.fromMap((map['schema']! as Map).cast<String, dynamic>())),
    );
  }
}
