// ignore_for_file: unused_element, unnecessary_cast

/// Specifies how metastore metadata should be integrated with the Data Catalog service.
class DataCatalogConfigMetastoreV1beta {
  /// Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  final bool? enabled;

  DataCatalogConfigMetastoreV1beta({
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

  factory DataCatalogConfigMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return DataCatalogConfigMetastoreV1beta(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
