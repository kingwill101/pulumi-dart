// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_open_table_format_input_iceberg_input_iceberg_table_input_partition_spec_field.dart';

class CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpec {
  /// List of partition fields that define how the table data should be partitioned. See `partition_spec.fields` below.
  final pulumi.Input<List<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecField>> fields;
  /// Unique identifier for this partition specification within the Iceberg table's metadata history.
  final pulumi.Input<int?>? specId;

  /// Creates a new [CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpec].
  /// [fields] List of partition fields that define how the table data should be partitioned. See `partition_spec.fields` below.
  /// [specId] Unique identifier for this partition specification within the Iceberg table's metadata history.
  const CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpec({
    required this.fields,
    this.specId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'specId': ?specId,
    };
  }

  factory CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpec.fromMap(Map<String, dynamic> map) {
    return CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpec(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecField>(map['fields']!, (value) => CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecField.fromMap((value as Map).cast<String, dynamic>()))),
      specId: (() { final guardedValue = map['specId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
