// ignore_for_file: unused_element, unnecessary_cast

class OptInResourceDataDataCellsFilter {
  /// The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
  final String? databaseName;

  /// Name of the table.
  final String? name;

  /// ID of the catalog to which the table belongs.
  final String? tableCatalogId;

  /// Name of the table.
  final String? tableName;

  OptInResourceDataDataCellsFilter({
    this.databaseName,
    this.name,
    this.tableCatalogId,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseNameValue = databaseName;
    if (databaseNameValue != null) {
      map['databaseName'] = databaseNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final tableCatalogIdValue = tableCatalogId;
    if (tableCatalogIdValue != null) {
      map['tableCatalogId'] = tableCatalogIdValue;
    }
    final tableNameValue = tableName;
    if (tableNameValue != null) {
      map['tableName'] = tableNameValue;
    }
    return map;
  }

  factory OptInResourceDataDataCellsFilter.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataDataCellsFilter(
      databaseName:
          map['databaseName'] == null ? null : map['databaseName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tableCatalogId: map['tableCatalogId'] == null
          ? null
          : map['tableCatalogId'] as String,
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
    );
  }
}
