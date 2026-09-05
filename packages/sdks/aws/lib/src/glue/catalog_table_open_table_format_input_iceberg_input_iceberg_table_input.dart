// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_open_table_format_input_iceberg_input_iceberg_table_input_partition_spec.dart';
import 'catalog_table_open_table_format_input_iceberg_input_iceberg_table_input_schema.dart';
import 'catalog_table_open_table_format_input_iceberg_input_iceberg_table_input_sort_order.dart';

class CatalogTableOpenTableFormatInputIcebergInputIcebergTableInput {
  /// S3 location where the Iceberg table data will be stored. Maximum length of 2056 characters.
  final pulumi.Input<String> location;
  /// Partitioning specification that defines how the Iceberg table data will be organized and partitioned for optimal query performance. See `partitionSpec` below.
  final pulumi.Input<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpec?>? partitionSpec;
  /// Key-value pairs of additional table properties and configuration settings for the Iceberg table.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Schema definition that specifies the structure, field types, and metadata for the Iceberg table. See `schema` below.
  final pulumi.Input<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchema> schema;
  /// Sort order specification that defines how data should be ordered within each partition to optimize query performance. See `sortOrder` below.
  final pulumi.Input<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrder?>? sortOrder;

  /// Creates a new [CatalogTableOpenTableFormatInputIcebergInputIcebergTableInput].
  /// [location] S3 location where the Iceberg table data will be stored. Maximum length of 2056 characters.
  /// [partitionSpec] Partitioning specification that defines how the Iceberg table data will be organized and partitioned for optimal query performance. See `partitionSpec` below.
  /// [properties] Key-value pairs of additional table properties and configuration settings for the Iceberg table.
  /// [schema] Schema definition that specifies the structure, field types, and metadata for the Iceberg table. See `schema` below.
  /// [sortOrder] Sort order specification that defines how data should be ordered within each partition to optimize query performance. See `sortOrder` below.
  const CatalogTableOpenTableFormatInputIcebergInputIcebergTableInput({
    required this.location,
    this.partitionSpec,
    this.properties,
    required this.schema,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'partitionSpec': ?pulumi.Input.mapOptionalInputValue<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpec, Map<String, dynamic>>(partitionSpec, (value) => value.toMap()),
      'properties': ?properties,
      'schema': pulumi.Input.mapInputValue<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'sortOrder': ?pulumi.Input.mapOptionalInputValue<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrder, Map<String, dynamic>>(sortOrder, (value) => value.toMap()),
    };
  }

  factory CatalogTableOpenTableFormatInputIcebergInputIcebergTableInput.fromMap(Map<String, dynamic> map) {
    return CatalogTableOpenTableFormatInputIcebergInputIcebergTableInput(
      location: pulumi.Input.fromValue(map['location'] as String),
      partitionSpec: (() { final guardedValue = map['partitionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      schema: pulumi.Input.fromValue(CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchema.fromMap((map['schema']! as Map).cast<String, dynamic>())),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrder.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
