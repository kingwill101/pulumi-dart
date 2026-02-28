// ignore_for_file: unused_element, unnecessary_cast


/// Specifies how metastore metadata should be integrated with the Data Catalog service.
class DataCatalogConfigResponseMetastoreV1alpha {
  /// Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  final bool enabled;

  /// Creates a new [DataCatalogConfigResponseMetastoreV1alpha].
  /// [enabled] Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  DataCatalogConfigResponseMetastoreV1alpha({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory DataCatalogConfigResponseMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return DataCatalogConfigResponseMetastoreV1alpha(
      enabled: map['enabled'] as bool,
    );
  }
}

