// ignore_for_file: unused_element, unnecessary_cast

class CatalogTableStorageDescriptorSortColumn {
  /// Name of the column.
  final String column;

  /// Whether the column is sorted in ascending (`1`) or descending order (`0`).
  final int sortOrder;

  CatalogTableStorageDescriptorSortColumn({
    required this.column,
    required this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['column'] = column;
    map['sortOrder'] = sortOrder;
    return map;
  }

  factory CatalogTableStorageDescriptorSortColumn.fromMap(
      Map<String, dynamic> map) {
    return CatalogTableStorageDescriptorSortColumn(
      column: map['column'] as String,
      sortOrder: map['sortOrder'] as int,
    );
  }
}
