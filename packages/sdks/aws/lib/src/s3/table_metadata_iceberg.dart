// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_metadata_iceberg_schema.dart';

class TableMetadataIceberg {
  /// Schema configuration for the Iceberg table.
  /// See `schema` below.
  final pulumi.Input<TableMetadataIcebergSchema> schema;

  /// Creates a new [TableMetadataIceberg].
  /// [schema] Schema configuration for the Iceberg table.
  TableMetadataIceberg({
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': pulumi.Input.mapInputValue<TableMetadataIcebergSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
    };
  }

  factory TableMetadataIceberg.fromMap(Map<String, dynamic> map) {
    return TableMetadataIceberg(
      schema: pulumi.Input.fromValue(TableMetadataIcebergSchema.fromMap((map['schema']! as Map).cast<String, dynamic>())),
    );
  }
}

