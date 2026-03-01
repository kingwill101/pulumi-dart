// ignore_for_file: unused_element, unnecessary_cast

class FeatureGroupOfflineStoreConfigDataCatalogConfig {
  /// The name of the Glue table catalog.
  final String? catalog;

  /// The name of the Glue table database.
  final String? database;

  /// The name of the Glue table.
  final String? tableName;

  /// Creates a new [FeatureGroupOfflineStoreConfigDataCatalogConfig].
  /// [catalog] The name of the Glue table catalog.
  /// [database] The name of the Glue table database.
  /// [tableName] The name of the Glue table.
  FeatureGroupOfflineStoreConfigDataCatalogConfig({
    this.catalog,
    this.database,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': ?catalog,
      'database': ?database,
      'tableName': ?tableName,
    };
  }

  factory FeatureGroupOfflineStoreConfigDataCatalogConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureGroupOfflineStoreConfigDataCatalogConfig(
      catalog: map['catalog'] == null ? null : map['catalog'] as String,
      database: map['database'] == null ? null : map['database'] as String,
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
    );
  }
}
