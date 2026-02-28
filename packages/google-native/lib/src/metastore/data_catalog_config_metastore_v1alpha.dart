// ignore_for_file: unused_element, unnecessary_cast


/// Specifies how metastore metadata should be integrated with the Data Catalog service.
class DataCatalogConfigMetastoreV1alpha {
  /// Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  final bool? enabled;

  /// Creates a new [DataCatalogConfigMetastoreV1alpha].
  /// [enabled] Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  DataCatalogConfigMetastoreV1alpha({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DataCatalogConfigMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return DataCatalogConfigMetastoreV1alpha(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

