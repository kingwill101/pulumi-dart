// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogTableStorageDescriptorSortColumn {
  /// Name of the column.
  final pulumi.Input<String> column;
  /// Whether the column is sorted in ascending (`1`) or descending order (`0`).
  final pulumi.Input<int> sortOrder;

  /// Creates a new [GetCatalogTableStorageDescriptorSortColumn].
  /// [column] Name of the column.
  /// [sortOrder] Whether the column is sorted in ascending (`1`) or descending order (`0`).
  GetCatalogTableStorageDescriptorSortColumn({
    required this.column,
    required this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'sortOrder': sortOrder,
    };
  }

  factory GetCatalogTableStorageDescriptorSortColumn.fromMap(Map<String, dynamic> map) {
    return GetCatalogTableStorageDescriptorSortColumn(
      column: (map['column'] as String).input(),
      sortOrder: (map['sortOrder'] as int).input(),
    );
  }
}

