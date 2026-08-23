// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_open_table_format_input_iceberg_input_iceberg_table_input_sort_order_field.dart';

class CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrder {
  /// List of fields and their sort directions that define the ordering criteria for the Iceberg table data. See `sort_order.fields` below.
  final pulumi.Input<List<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderField>> fields;
  /// Unique identifier for this sort order specification within the Iceberg table's metadata.
  final pulumi.Input<int> orderId;

  /// Creates a new [CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrder].
  /// [fields] List of fields and their sort directions that define the ordering criteria for the Iceberg table data. See `sort_order.fields` below.
  /// [orderId] Unique identifier for this sort order specification within the Iceberg table's metadata.
  const CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrder({
    required this.fields,
    required this.orderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'orderId': orderId,
    };
  }

  factory CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrder.fromMap(Map<String, dynamic> map) {
    return CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrder(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderField>(map['fields']!, (value) => CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderField.fromMap((value as Map).cast<String, dynamic>()))),
      orderId: pulumi.Input.fromValue(map['orderId'] as int),
    );
  }
}
