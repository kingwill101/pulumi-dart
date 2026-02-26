// ignore_for_file: unused_element, unnecessary_cast

class PermissionsDataCellsFilter {
  /// The name of the database.
  final String databaseName;

  /// The name of the data cells filter.
  final String name;

  /// The ID of the Data Catalog.
  final String tableCatalogId;

  /// The name of the table.
  final String tableName;

  PermissionsDataCellsFilter({
    required this.databaseName,
    required this.name,
    required this.tableCatalogId,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseName'] = databaseName;
    map['name'] = name;
    map['tableCatalogId'] = tableCatalogId;
    map['tableName'] = tableName;
    return map;
  }

  factory PermissionsDataCellsFilter.fromMap(Map<String, dynamic> map) {
    return PermissionsDataCellsFilter(
      databaseName: map['databaseName'] as String,
      name: map['name'] as String,
      tableCatalogId: map['tableCatalogId'] as String,
      tableName: map['tableName'] as String,
    );
  }
}
