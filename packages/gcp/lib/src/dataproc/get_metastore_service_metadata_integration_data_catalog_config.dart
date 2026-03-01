// ignore_for_file: unused_element, unnecessary_cast

class GetMetastoreServiceMetadataIntegrationDataCatalogConfig {
  /// Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  final bool enabled;

  /// Creates a new [GetMetastoreServiceMetadataIntegrationDataCatalogConfig].
  /// [enabled] Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  GetMetastoreServiceMetadataIntegrationDataCatalogConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetMetastoreServiceMetadataIntegrationDataCatalogConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetMetastoreServiceMetadataIntegrationDataCatalogConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
