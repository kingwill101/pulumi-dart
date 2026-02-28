// ignore_for_file: unused_element, unnecessary_cast

/// Specifies how metastore metadata should be integrated with the Data Catalog service.
class DataCatalogConfig {
  /// Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  final bool? enabled;

  /// Creates a new [DataCatalogConfig].
  /// [enabled] Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  DataCatalogConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory DataCatalogConfig.fromMap(Map<String, dynamic> map) {
    return DataCatalogConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
