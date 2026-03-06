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
  const FeatureGroupOfflineStoreConfigDataCatalogConfig({
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
      catalog: (() { final guardedValue = map['catalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

