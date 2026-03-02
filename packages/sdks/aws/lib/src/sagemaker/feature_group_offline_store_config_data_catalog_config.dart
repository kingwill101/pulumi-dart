// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureGroupOfflineStoreConfigDataCatalogConfig {
  /// The name of the Glue table catalog.
  final pulumi.Input<String>? catalog;
  /// The name of the Glue table database.
  final pulumi.Input<String>? database;
  /// The name of the Glue table.
  final pulumi.Input<String>? tableName;

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

  factory FeatureGroupOfflineStoreConfigDataCatalogConfig.fromMap(Map<String, dynamic> map) {
    return FeatureGroupOfflineStoreConfigDataCatalogConfig(
      catalog: map['catalog'] == null ? null : (map['catalog'] as String).input(),
      database: map['database'] == null ? null : (map['database'] as String).input(),
      tableName: map['tableName'] == null ? null : (map['tableName'] as String).input(),
    );
  }
}

