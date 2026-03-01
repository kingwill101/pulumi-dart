// ignore_for_file: unused_element, unnecessary_cast

/// Specifies how metastore metadata should be integrated with the Data Catalog service.
class DataCatalogConfigResponseMetastoreV1beta {
  /// Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  final bool enabled;

  /// Creates a new [DataCatalogConfigResponseMetastoreV1beta].
  /// [enabled] Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  DataCatalogConfigResponseMetastoreV1beta({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory DataCatalogConfigResponseMetastoreV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataCatalogConfigResponseMetastoreV1beta(
      enabled: map['enabled'] as bool,
    );
  }
}
