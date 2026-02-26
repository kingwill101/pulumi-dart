// ignore_for_file: unused_element, unnecessary_cast

/// Specifies how metastore metadata should be integrated with the Data Catalog service.
class DataCatalogConfigResponse2 {
  /// Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog.
  final bool enabled;

  DataCatalogConfigResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory DataCatalogConfigResponse2.fromMap(Map<String, dynamic> map) {
    return DataCatalogConfigResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
