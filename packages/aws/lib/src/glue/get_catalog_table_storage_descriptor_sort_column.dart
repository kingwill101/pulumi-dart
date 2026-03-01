// ignore_for_file: unused_element, unnecessary_cast


class GetCatalogTableStorageDescriptorSortColumn {
  /// Name of the column.
  final String column;
  /// Whether the column is sorted in ascending (`1`) or descending order (`0`).
  final int sortOrder;

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
      column: map['column'] as String,
      sortOrder: map['sortOrder'] as int,
    );
  }
}

