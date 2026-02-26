// ignore_for_file: unused_element, unnecessary_cast

class FeatureGroupOfflineStoreConfigDataCatalogConfig {
  /// The name of the Glue table catalog.
  final String? catalog;

  /// The name of the Glue table database.
  final String? database;

  /// The name of the Glue table.
  final String? tableName;

  FeatureGroupOfflineStoreConfigDataCatalogConfig({
    this.catalog,
    this.database,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogValue = catalog;
    if (catalogValue != null) {
      map['catalog'] = catalogValue;
    }
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = databaseValue;
    }
    final tableNameValue = tableName;
    if (tableNameValue != null) {
      map['tableName'] = tableNameValue;
    }
    return map;
  }

  factory FeatureGroupOfflineStoreConfigDataCatalogConfig.fromMap(
      Map<String, dynamic> map) {
    return FeatureGroupOfflineStoreConfigDataCatalogConfig(
      catalog: map['catalog'] == null ? null : map['catalog'] as String,
      database: map['database'] == null ? null : map['database'] as String,
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
    );
  }
}
