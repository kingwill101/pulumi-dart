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

  /// Creates a new [OptInResourceDataDataCellsFilter].
  /// [databaseName] The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
  /// [name] Name of the table.
  /// [tableCatalogId] ID of the catalog to which the table belongs.
  /// [tableName] Name of the table.
  OptInResourceDataDataCellsFilter({
    this.databaseName,
    this.name,
    this.tableCatalogId,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'name': ?name,
      'tableCatalogId': ?tableCatalogId,
      'tableName': ?tableName,
    };
  }

  factory OptInResourceDataDataCellsFilter.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataDataCellsFilter(
      databaseName: map['databaseName'] == null
          ? null
          : map['databaseName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tableCatalogId: map['tableCatalogId'] == null
          ? null
          : map['tableCatalogId'] as String,
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
    );
  }
}
